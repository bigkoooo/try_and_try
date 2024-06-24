const express = require('express');
const controller = require('../controller/Cvisitor');
const router = express.Router();

// GET / => localhost:PORT/
router.get('/', controller.main);

// GET /visitors => localhost:PORT/visitors
router.get('/visitors', controller.getVisitors); // 전체 조회

module.exports = router;

