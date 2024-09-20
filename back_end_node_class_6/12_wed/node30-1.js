const express = require('express');
const app = express();
const PORT = 8000;

app.set('view engine', 'ejs');
app.set('views', './try');

app.get('/', (req, res)=>{
    res.render('try01')
})

app.listen(PORT, ()=>{
    console.log('8000 서버실행');
})