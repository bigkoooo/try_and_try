const multer = require('multer');
const path = require('path');

const storage = multer.diskStorage({
    destination(req, file, done) {
        done(null, 'uploads/');
    },
    filename(req, file, done) {
        const ext = path.extname(file.originalname);
        done(null, path.basename(file.originalname, ext) + Date.now() + ext);
    }
});

const upload = multer({ 
    storage: storage,
    limits: { fileSize: 5 * 1024 * 1024 }
});

module.exports = upload;
