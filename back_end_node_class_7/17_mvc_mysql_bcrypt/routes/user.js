const express = require('express');
const controller = require('../controller/Cuser');
const router = express.Router();

router.get('/', controller.main);
router.get('/signup', controller.signUp);
router.post('/signup', controller.postsignUp);
router.get('/signin', controller.signIn);
router.post('/signin', controller.postsignIn);
router.post('/profile', controller.verifyToken, controller.postProfile);
router.delete('/profile/delete', controller.verifyToken, controller.deleteProfile);
router.patch('/profile/edit', controller.verifyToken, controller.patchProfile);
router.post('/logout', controller.verifyToken, controller.logout);

module.exports = router;
