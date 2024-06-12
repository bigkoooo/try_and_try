const express = require('express');
const app = express();
const PORT = 8000;

app.set('view engine', 'ejs');
app.set('views', './views');

// 브라우저 처음 접속했을 때
app.get('/', (req, res)=>{
    res.render('node32', {title:'HOME'})
})

app.get('/node31', (req, res)=>{
    res.render('node31', {title:'node31'})
})



app.listen(PORT, ()=>{
    console.log('8000 서버실행');
})