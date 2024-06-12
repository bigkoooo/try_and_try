const express = require('express');
const app = express();
app.set('view engine', 'ejs');
app.set('views', './views');
app.use(express.static('public'))

app.get('/', (req, res)=>{
    res.render('node33_1', {title:'Home'})
})

app.get('/node33_3', (req, res)=>{
    res.render('node33_3',  {title:'node33_3'})
})

// 지정된 경로외 경로일때
app.use((req, res)=>{
    res.status(404).render('404')
});

app.listen(8000, ()=>{
    console.log('http://localhost:8000');
});