const express = require('express');
const app = express();
const PORT = 8080;

app.set('view engine', 'ejs');
app.set('views', './views'); 
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use('/static', express.static(__dirname + '/public'));
app.use('/uploads', express.static(__dirname + '/uploads'));

const indexRouter = require('./routes/index');
app.use('/', indexRouter);

app.listen(PORT, function () {
    console.log(`http://localhost:${PORT}`);
});
