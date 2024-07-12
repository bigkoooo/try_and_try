const angle = 20;
const rotateCard = window;

const lerp = (start, end, amount) => {
    return (1 - amount) * start + amount * end;
};

const remap = (value, oldMax, newMax) => {
    const newValue = ((value + oldMax) * (newMax * 2)) / (oldMax * 2) - newMax;
    return Math.min(Math.max(newValue, -newMax), newMax);
};

window.addEventListener("DOMContentLoaded", (event) => {
    const cards = document.querySelectorAll(".card");

    // addMousemoveListener 메서드
    // 카드 위에서 마우스를 움직일 때 카드의 회전을 계산하여 적용
    cards.forEach((e) => {        
        e.addEventListener("mousemove", (event) => {
            const rect = e.getBoundingClientRect();
            const centerX = (rect.left + rect.right) / 2;
            const centerY = (rect.top + rect.bottom) / 2;
            const posX = event.pageX - centerX;
            const posY = event.pageY - centerY;
            const x = remap(posX, rect.width / 2, angle);
            const y = remap(posY, rect.height / 2, angle);
            e.dataset.rotateX = x;
            e.dataset.rotateY = -y;
        });

        // addMouseoutListener 메서드
        // 마우스가 카드에서 벗어날 때 카드의 회전을 초기화
        e.addEventListener("mouseout", (event) => {
            e.dataset.rotateX = 0;
            e.dataset.rotateY = 0;
        });

        // 카드 클릭 이벤트 리스너 추가
        // 카드를 클릭했을 때 data-url 속성에 지정된 URL로 이동
        e.addEventListener("click", (event) => {
            const url = e.getAttribute("data-url");
            if (url) {
                window.location.href = url;
            }
        });
    });

    // updateCardRotation 메서드
    // 카드의 회전 애니메이션을 업데이트
    const update = () => {
        cards.forEach((e) => {
            let currentX = parseFloat(e.style.getPropertyValue('--rotateY').slice(0, -1));
            let currentY = parseFloat(e.style.getPropertyValue('--rotateX').slice(0, -1));
            if (isNaN(currentX)) currentX = 0;
            if (isNaN(currentY)) currentY = 0;
            const x = lerp(currentX, e.dataset.rotateX, 0.05);
            const y = lerp(currentY, e.dataset.rotateY, 0.05);
            e.style.setProperty("--rotateY", x + "deg");
            e.style.setProperty("--rotateX", y + "deg");
        })
    }
    setInterval(update, 1000 / 60);

    // 좋아요 클릭 이벤트 추가
    // 좋아요 버튼을 클릭했을 때 좋아요 수를 증가시킴
    const likeButtons = document.querySelectorAll('.comment-action');
    likeButtons.forEach(button => {
        button.addEventListener('click', () => {
            const likesSpan = button.previousElementSibling;
            let likes = parseInt(likesSpan.textContent);
            likes++;
            likesSpan.textContent = likes;
            button.dataset.likes = likes; // data-likes 속성 업데이트
        });
    });

    // 이모지 클릭 이벤트 추가
    // 이모지 버튼을 클릭했을 때 댓글 숫자를 0으로 초기화
    const emojiButtons = document.querySelectorAll('.likes');
    emojiButtons.forEach(button => {
        button.addEventListener('click', () => {
            const commentsSpan = button.nextElementSibling;
            commentsSpan.textContent = 0; // 댓글 숫자를 0으로 초기화
        });
    });

    // addCommentClickListener 메서드
    // 댓글 본문을 클릭했을 때 팝업창을 띄움
    const addCommentClickListener = () => {
        const comments = document.querySelectorAll('.comment-body');
        comments.forEach(comment => {
            comment.addEventListener('click', (event) => {
                const popupWidth = window.innerWidth * 0.8;
                const popupHeight = window.innerHeight * 0.8;
                const popupLeft = (window.innerWidth - popupWidth) / 2;
                const popupTop = (window.innerHeight - popupHeight) / 2;
                window.open('popup.html', 'popup', `width=${popupWidth},height=${popupHeight},left=${popupLeft},top=${popupTop}`);
            });
        });
    };

    addCommentClickListener();  // 댓글 클릭 이벤트 리스너 추가 호출
});
