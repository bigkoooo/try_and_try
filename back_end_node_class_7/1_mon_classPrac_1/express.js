const express = require('express');
const cookieParser = require('cookie-parser');
const app = express();
const port = 3000;

app.set('view engine', 'ejs');
app.set('views', './views');

app.use(cookieParser());
app.use(express.static('public'));

app.get('/', (req, res) => {
  res.render('index', { showPopup: !req.cookies.noPopup });
});

app.listen(port, () => {
  console.log(`서버가 http://localhost:${port} 에서 실행 중입니다.`);
});
