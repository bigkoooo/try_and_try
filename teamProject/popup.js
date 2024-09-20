document.addEventListener('DOMContentLoaded', () => {
    const commentInput = document.getElementById('comment-input');
    const addCommentButton = document.getElementById('add-comment');
    const commentsContainer = document.getElementById('comments-container');
    const charCounter = document.getElementById('char-counter');

    // 글자 수 업데이트 함수
    const updateCharCount = () => {
        charCounter.textContent = commentInput.value.length;
    };

    // 입력이 변경될 때 글자 수 업데이트
    commentInput.addEventListener('input', updateCharCount);

    // 댓글 생성
    const createComment = (text) => {
        const comment = document.createElement('div');
        comment.className = 'comment';

        const commentHeader = document.createElement('div');
        commentHeader.className = 'comment-header';

        const commentAuthor = document.createElement('div');
        commentAuthor.className = 'comment-author';
        commentAuthor.textContent = '익명';

        const commentOptions = document.createElement('div');
        commentOptions.className = 'comment-options';
        
        const editButton = document.createElement('button');
        editButton.textContent = '수정';
        editButton.addEventListener('click', () => {
            editComment(comment);
        });

        const deleteButton = document.createElement('button');
        deleteButton.textContent = '삭제';
        deleteButton.addEventListener('click', () => {
            deleteComment(comment);
        });

        commentOptions.appendChild(editButton);
        commentOptions.appendChild(deleteButton);

        commentHeader.appendChild(commentAuthor);
        commentHeader.appendChild(commentOptions);

        const commentBody = document.createElement('div');
        commentBody.className = 'comment-body';
        commentBody.textContent = text;

        const commentFooter = document.createElement('div');
        commentFooter.className = 'comment-footer';

        const likesSpan = document.createElement('span');
        likesSpan.className = 'likes';
        likesSpan.textContent = '0';

        const likeButton = document.createElement('span');
        likeButton.className = 'comment-action';
        likeButton.innerHTML = '좋아요 <span class="thumb">👍</span>';
        likeButton.addEventListener('click', (event) => {
            if (event.target.classList.contains('thumb')) {
                likesSpan.textContent = '0';
            } else {
                let likes = parseInt(likesSpan.textContent);
                likes++;
                likesSpan.textContent = likes;
            }
        });

        commentFooter.appendChild(likesSpan);
        commentFooter.appendChild(likeButton);

        comment.appendChild(commentHeader);
        comment.appendChild(commentBody);
        comment.appendChild(commentFooter);

        commentsContainer.appendChild(comment);
    };

    // 댓글 수정
    const editComment = (comment) => {
        const commentBody = comment.querySelector('.comment-body');
        const newText = prompt('댓글을 수정하세요:', commentBody.textContent);
        if (newText) {
            commentBody.textContent = newText;
        }
    };

    // 댓글 삭제
    const deleteComment = (comment) => {
        commentsContainer.removeChild(comment);
    };

    // 댓글 추가 버튼 클릭 이벤트
    addCommentButton.addEventListener('click', () => {
        const text = commentInput.value.trim();
        if (text) {
            createComment(text);
            commentInput.value = '';
            updateCharCount(); // 댓글이 추가되면 글자 수 업데이트
        } else {
            alert('댓글을 입력하세요.');
        }
    });

    // 임시로 몇 개의 댓글을 추가합니다.
    createComment('첫 번째 댓글입니다.');
    createComment('두 번째 댓글입니다.');

    // 초기 글자 수 업데이트
    updateCharCount();
});
