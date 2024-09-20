const express = require('express');
const app = express();
const port = 3000;

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
    const slides = [
        { image: '/path/to/1.png', label: 'First slide label', text: 'Some representative placeholder content for the first slide.', link: 'page1.html' },
        { image: '/path/to/2.png', label: 'Second slide label', text: 'Some representative placeholder content for the second slide.', link: 'page2.html' },
        { image: '/path/to/3.png', label: 'Third slide label', text: 'Some representative placeholder content for the third slide.', link: 'page3.html' },
        { image: '/path/to/4.png', label: 'Fourth slide label', text: 'Some representative placeholder content for the fourth slide.', link: 'page4.html' },
        { image: '/path/to/5.jpeg', label: 'Fifth slide label', text: 'Some representative placeholder content for the fifth slide.', link: 'page5.html' }
    ];
    res.render('index', { title: 'Document', slides });
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
