const express = require('express');
const controller = require('../controller/Cmain');
const router = express.Router();

console.log('====== routes/index.js =======');
console.log(controller);

router.get('/', controller.getMain);

router.get('/comments', controller.getComments);

router.get('/comment/:id', controller.getComment);

module.exports = router;