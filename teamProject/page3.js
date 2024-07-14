$(document).ready(function() { // DOM이 준비된 후에 실행
    function addCardMovement(cardId) {
        $(cardId).on("mousemove", function(t) {
            var e = -($(cardId).width() / 2 - t.offsetX) / 10, // 좌우 움직임 조정
                n = ($(cardId).height() / 2 - t.offsetY) / 10; // 상하 움직임 조정
            $(cardId).css("transform", "rotateY(" + e + "deg) rotateX(" + n + "deg)");
        });

        $(cardId).on("mouseleave", function() { // 마우스가 카드에서 벗어날 때 초기화
            $(cardId).css("transform", "rotateY(0deg) rotateX(0deg)");
        });
    }

    // 각 카드에 개별적으로 이벤트 리스너 추가
    addCardMovement("#card1");
    addCardMovement("#card2");
    addCardMovement("#card3");
});
