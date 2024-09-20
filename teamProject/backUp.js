    <div class="fixed-login">
        <a class="" href="">로그인</a>
    </div>

// detail.js

document.addEventListener('DOMContentLoaded', () => {
    const viewDetailLink = document.getElementById('viewDetail');
    const card = document.querySelector('.card');

    // 상세보기 클릭 이벤트
    viewDetailLink.addEventListener('click', (e) => {
        e.preventDefault();
        card.classList.add('slide-right');
    });
});

// https://wsss.tistory.com/585#none 카드추천 css 고민중

