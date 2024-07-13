document.addEventListener('DOMContentLoaded', () => {
    const viewDetailLink = document.getElementById('viewDetail');
    const backButton = document.getElementById('backButton');
    const card = document.querySelector('.card');
    const box = document.getElementById('box');

    // 상세보기 클릭 이벤트
    viewDetailLink.addEventListener('click', (e) => {
        e.preventDefault(); // 기본 링크 동작 방지
        card.classList.add('slide-left'); // 카드에 slide-left 클래스 추가
        viewDetailLink.style.display = 'none'; // 상세보기 버튼 숨김
        backButton.style.display = 'inline-block'; // 뒤로가기 버튼 표시

        // 카드가 왼쪽으로 이동하는 거리 계산 (35vw - 120px)
        const cardMoveDistance = window.innerWidth * 0.35 - 120;

        // 새로운 div 요소에 애니메이션을 바로 적용하여 더 빨리 나타나게 함
        box.style.display = 'flex'; 
        box.style.animation = 'slideRight 0.5s forwards'; // 애니메이션 시간을 줄여서 더 빨리 나타나도록 함
    });
});
