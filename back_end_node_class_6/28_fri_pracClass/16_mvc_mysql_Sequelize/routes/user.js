// TODO: 라우트 설정
const express = require('express');
const controller = require('../controller/Cuser');
const router = express.Router();

router.get('/', controller.main);

router.get('/signup', controller.signUp);

router.post('/signup', controller.postsignUp);

router.get('/signin', controller.signIn);

router.post('/signin', controller.postsignIn);

router.post('/profile', controller.postProfile);

router.delete('/profile/delete', controller.deleteProfile);

router.patch('/profile/edit', controller.patchProfile);

module.exports = router;

