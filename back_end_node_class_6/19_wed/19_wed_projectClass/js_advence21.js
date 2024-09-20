const express = require('express');
const multer = require('multer');
const path = require('path');

const app = express();
const PORT = 8080;

app.set('view engine', 'ejs');
app.set('views', './vvviews'); 
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.get('/', (req, res) => {
    res.render('js_advence22', { title: '동적 폼을 배워보자!' });
});

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
    storage: storage,
    limits: { fileSize: 5 * 1024 * 1024 } 
});

app.post("/upload", uploadDetail.single('userfile'), (req, res) => {
    console.log(req.body); 
    console.log(req.file); 

    const userInfo = {
        urID: req.body.urID || 'Unknown ID',
        password: req.body.password || 'Unknown Password',
        name: req.body.name || 'Unknown Name',
        urAge: req.body.urAge || 'Unknown Age',
    };

    res.render('js_advence23', { 
        title: req.body.title, 
        src: `/uploads/${req.file.filename}`,
        userInfo: userInfo
    });
});

app.listen(PORT, function () {
    console.log(`http://localhost:${PORT}`);
});