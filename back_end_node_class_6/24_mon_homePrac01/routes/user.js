const express = require('express');
const controller = require('../controller/Cuser');
const router = express.Router();

console.log('===== routes/user.js ======');
console.log(controller);

router.get('/', controller.getUser);

module.exports = router;