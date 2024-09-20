const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

let todos = [];

app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static('public'));

app.get('/', (req, res) => {
    res.render('index', { todos: todos });
});

app.post('/add', (req, res) => {
    const newTodo = req.body.newTodo;
    if (newTodo) {
        todos.push({ text: newTodo, completed: false });
    }
    res.redirect('/');
});

app.post('/toggle', (req, res) => {
    const todoIndex = req.body.todoIndex;
    if (todos[todoIndex]) {
        todos[todoIndex].completed = !todos[todoIndex].completed;
    }
    res.redirect('/');
});

app.post('/delete', (req, res) => {
    const todoIndex = req.body.todoIndex;
    if (todos[todoIndex]) {
        todos.splice(todoIndex, 1);
    }
    res.redirect('/');
});

app.listen(port, () => {
    console.log(`Todo app listening at http://localhost:${port}`);
});
