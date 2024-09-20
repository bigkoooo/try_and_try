const express = require('express');
const app = express();
const port = 3000;

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
    const cards = [
        {
            image: 'https://d1c5n4ri2guedi.cloudfront.net/card/2423/card_img/27142/2423card.png',
            title: '노리2 체크카드(Global)',
            description: '커피,모바일,문화10%할인.',
            comments: [
                {
                    profileImage: 'https://via.placeholder.com/40',
                    author: '코딩온 션',
                    options: '써봤어요',
                    body: '누리2카드 미만 잡, 코딩온 대표도 쓰는 거 내가 봄.',
                    likes: 0
                },
                {
                    profileImage: 'https://via.placeholder.com/40',
                    author: '코딩온 데이먼',
                    options: '쓰고 싶어요',
                    body: '쓰고 싶은데.. 대표랑 같은 카드 쓰기 싫음ㅠ',
                    likes: 0
                }
            ]
        },
        {
            image: 'https://d1c5n4ri2guedi.cloudfront.net/card/2422/card_img/27141/2422card.png',
            title: '노리2 체크카드(KB Pay)',
            description: '뷰티, 편의점5%할인.',
            comments: [
                {
                    profileImage: 'https://via.placeholder.com/40',
                    author: '코딩온 오올',
                    options: '써봤어요',
                    body: '무식한새싹에게 치이는 매일 밤..편맥 때릴때 좋은 카드',
                    likes: 0
                },
                {
                    profileImage: 'https://via.placeholder.com/40',
                    author: '새싹 민석',
                    options: '쓰고 싶어요',
                    body: '편의점을 항상 이용하는 새싹 무직러에게 빛과 같은 카드',
                    likes: 0
                }
            ]
        },
        {
            image: 'https://d1c5n4ri2guedi.cloudfront.net/card/528/card_img/21216/528card.png',
            title: '라이언 치즈 체크카드',
            description: '대중교통1.5%적립',
            comments: [
                {
                    profileImage: 'https://via.placeholder.com/40',
                    author: '코딩온 대표',
                    options: '써봤어요',
                    body: '"정량"혜택은 다소 부족하지만.."정성"이 느껴지는 카드',
                    likes: 0
                },
                {
                    profileImage: 'https://via.placeholder.com/40',
                    author: '코딩온 이사',
                    options: '쓰고 싶어요',
                    body: '대표님의 취향 저격 카드!',
                    likes: 0
                }
            ]
        }
    ];
    res.render('index', { title: 'Document', cards });
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
