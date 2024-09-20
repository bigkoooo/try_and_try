const express = require('express');
const router = express.Router();
const detailController = require('../controller/Cdetail');

// authenticateToken 미들웨어로 사용! 
// authenticateToken = [Function: authenticateToken]
const authenticateToken = require('../utils/jwt');
console.log();


// 카드 상세 페이지 라우트
router.get('/:cardId', authenticateToken, detailController.showCardDetails);

// 카드 좋아요 라우트
router.post('/like', authenticateToken, detailController.toggleLike);


module.exports = router;
