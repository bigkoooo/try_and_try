const express = require('express');
const controller = require('../controller/Cmain');
const router = express.Router();

// 작업 순서
// read all -> create -> delte -> read one -> update

// GET / => localhost:PORT/
router.get('/', controller.index);

module.exports = router;