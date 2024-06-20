const express = require("express");
const multer = require("multer");
const path = require("path");

const app = express();
const PORT = 8888;

app.set('view engine', 'ejs');
app.set('views', './vvviews');
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get('/', (req, res) => {
    res.render('js_advence22-1', { title: '어차피 하루 뒤면 다까먹고 기억1도 못할텐데...ㅠ' });
});

app.use(express.static(path.join(__dirname, 'public')));
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

const storage = multer.diskStorage({
    destination(req, file, done) {
        done(null, 'uploads/');
    },
    filename(req, file, done) {
        const ext = path.extname(file.originalname);
        const fileName = req.body.urID + ext;
        done(null, fileName); // 파일명을 urID.확장자로 설정
    }
});

const uploadDetail = multer({
    storage,
    limits: { fileSize: 10 * 1024 * 1024 }
});

app.post("/stealme", uploadDetail.single('userfile'), (req, res) => {
    const userInfo = {
        urID: req.body.urID,
        password: req.body.password,
        name: req.body.name,
        urAge: req.body.urAge,
    };

    res.render('js_advence23-1', {
        title: req.body.title,
        src: `/uploads/${req.file.filename}`,
        userInfo: userInfo
    });
});

app.listen(PORT, function () {
    console.log(`http://localhost:${PORT}`);
});