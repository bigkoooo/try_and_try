exports.main = (req, res) => {
    res.render('index', { title: '파일 업로드를 배워보자!!!' });
};

exports.uploadSingle = (req, res) => {
    console.log(req.body);
    console.log(req.file);
    res.render
    ('result', 
    { title: req.body.title, src1: req.file.path, src2: '' });
};

exports.uploadArray = (req, res) => {
    console.log(req.body);
    console.log(req.files);
    res.render
    ('result', 
    { title: req.body.title, src1: req.files[0].path, src2: req.files[1].path });
};

exports.uploadFields = (req, res) => {
    console.log(req.body);
    console.log(req.files);
    res.render
    ('result', 
    { title: req.body.title1, src1: req.files.kiwi[0].path, src2: req.files.orange[0].path });
};

exports.uploadDynamic = (req, res) => {
    res.send(req.file);
};
