document.addEventListener('DOMContentLoaded', () => {
    const viewDetailLink = document.getElementById('viewDetail');
    const card = document.querySelector('.card');

    // 상세보기 클릭 이벤트
    viewDetailLink.addEventListener('click', (e) => {
        e.preventDefault();
        card.classList.add('slide-right');
    });
});

