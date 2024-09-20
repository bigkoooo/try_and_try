document.querySelector('form').addEventListener('submit', function(event) {
    event.preventDefault(); // 기본 폼 제출을 방지합니다.

    // 입력 필드에서 검색어를 가져옵니다.
    const searchQuery = document.querySelector('input[type="search"]').value;

    // 검색결과 페이지로 이동합니다.
    window.location.href = 'search_results.html?query=' + encodeURIComponent(searchQuery);
});

    // 캐러셀 아이템 클릭 시 페이지 이동
    document.getElementById('slide1').addEventListener('click', function() {
        window.location.href = 'page1.html';
    });
    document.getElementById('slide2').addEventListener('click', function() {
        window.location.href = 'page2.html';
    });
    document.getElementById('slide3').addEventListener('click', function() {
        window.location.href = 'page3.html';
    });
    document.getElementById('slide4').addEventListener('click', function() {
        window.location.href = 'page4.html';
    });
    document.getElementById('slide5').addEventListener('click', function() {
        window.location.href = 'page5.html';
    });

    // 로그인 버튼 클릭 시 로그인 페이지로 이동
    document.getElementById('loginButton').addEventListener('click', function() {
        window.location.href = 'login.html';
    });