const express = require('express');
const controller = require('../controller/Cindex');
const router = express.Router();

router.get('/', controller.main);
// 이거 삭제!! 카테고리 페이지 보여줘야함! 
// router.get('/commend', controller.renderCommend);

module.exports = router;