require('dotenv').config(); // dotenv 패키지를 사용하여 .env 파일 로드
const express = require('express');
const jwt = require('jsonwebtoken');
const jwtExpress = require('express-jwt').expressjwt;
const { sequelize } = require('./models'); // Sequelize 인스턴스 가져오기
const app = express();
const PORT = process.env.PORT || 8000; // 포트를 환경 변수에서 가져오기

app.set('view engine', 'ejs');
app.set('views', './views');
app.use('/static', express.static(__dirname + '/static'));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

const secretKey = process.env.JWT_SECRET || 'your_secret_key';

// JWT를 사용한 보호된 라우트
app.use(jwtExpress({ secret: secretKey, algorithms: ['HS256'] }).unless({ path: ['/user/signin', '/user/signup', '/user'] }));

// 데이터베이스 동기화
sequelize.sync();

// 라우팅 분리
const userRouter = require('./routes/user');
app.use('/user', userRouter);

// 404 에러 처리
app.get('*', (req, res) => {
  res.render('404');
});

app.listen(PORT, () => {
  console.log(`http://localhost:${PORT}/user`);
});
