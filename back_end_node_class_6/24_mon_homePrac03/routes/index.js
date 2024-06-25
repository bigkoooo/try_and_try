const express = require('express');
const controller = require('../controller/Cfile');
const upload = require('../middlewares/upload-middleware');
const router = express.Router();

router.get('/', controller.main);

router.post('/upload', upload.single('userfile'), controller.uploadSingle);
router.post('/upload/array', upload.array('banana'), controller.uploadArray);
router.post('/upload/fields', upload.fields([{ name: 'kiwi' }, { name: 'orange' }]), controller.uploadFields);
router.post('/dynamicFile', upload.single('thumbnail'), controller.uploadDynamic);

module.exports = router;
