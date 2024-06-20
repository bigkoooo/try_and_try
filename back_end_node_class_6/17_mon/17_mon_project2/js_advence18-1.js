const { log } = require("console");
const e = require("express");
const express = require("express");
const multer = require('multer');
const path = require('path');
const { title } = require("process");

const app = express();
const PORT = 8888;

app.set('view engine', 'ejs');
app.set('views', './vvviews');
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use('/uploads', express.static(path.join(__dirname,'uploads'))); // 중복된 설정 제거
// app.use('/uploads', express.static(path.join(__dirname + '/uploads'))); // 이 줄 삭제
app.use('/static', 
    express.static(__dirname + '/public'));

const uploadDetail = multer({
    storage: multer.diskStorage({
        destination(req, file, done) {
            done(null, 'uploads/');
        },
        filename(req, file, done) {
            const ext = path.extname(file.originalname);
            done(null, path.basename(file.originalname, ext) + Date.now() + ext);
        }
    }),
    limits: { fileSize: 5 * 1024 * 1024 }
});

app.post('/upload', uploadDetail.single('userfile'), (req, res) => {
    console.log(req.body);
    console.log(req.file);

    res.render('js_advence20', { title: req.body.title, src: req.file.filename }); // req.file.filename으로 변경
});

app.post('/upload/array', uploadDetail.array('banana'), (req, res) => {
    console.log(req.body);
    console.log(req.files);

    res.send('Success Upload! (multiple)');
});

app.post('/upload/fields', uploadDetail.fields([{ name: 'kiwi' }, { name: 'orange' }]), (req, res) => {
    console.log(req.body);
    console.log(req.files);

    res.send('Success Upload!! (multiple2)');
});

// 동적 폼 업로드
app.post('/dynamicFile', uploadDetail.single('thumbnail'), (req, res) => {
    res.send(req.file);
})

app.get('/', function (req, res) {
    res.render('js_advence19-1', { title: '파일 업로드를 배워보자!!!' });
});

app.listen(PORT, function () {
    console.log(`http://localhost:${PORT}`);
});
