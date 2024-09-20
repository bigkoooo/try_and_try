const express = require('express');
const session = require('express-session');
const app = express();
const PORT = 8000;

app.set('view engine', 'ejs');
app.set('views', './views');
app.use('/static', express.static(__dirname + '/static'));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(session({
  secret: 'codingon91',
  resave: false,
  saveUninitialized: true,
  cookie: { maxAge: 20000 } // 20초
}));



// TODO: 라우팅 분리
const userRouter = require('./routes/user');
app.use('/user', userRouter);

// TODO: 404 에러 처리
app.get('*', (req, res) => {
  res.render('404');
});

app.listen(PORT, () => {
  console.log(`http://localhost:${PORT}/user`);
});