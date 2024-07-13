const items = document.querySelectorAll('.item');

const expand = (item, i) => {
  items.forEach((it, ind) => {
    if (i === ind) return;
    it.clicked = false;
  });
  gsap.to(items, {
    width: item.clicked ? '15vw' : '8vw',
    duration: 2,
    ease: 'elastic(1, .6)'
  });

  item.clicked = !item.clicked;
  gsap.to(item, {
    width: item.clicked ? '42vw' : '15vw',
    duration: 2.5,
    ease: 'elastic(1, .3)'
  });

  // 페이지 이동 코드 추가
  if (item.clicked) {
    item.addEventListener('click', () => {
      const pageIndex = i + 1;
      window.location.href = `page${pageIndex}.html`;
    }, { once: true });
  }
};

items.forEach((item, i) => {
  item.clicked = false;
  item.addEventListener('click', () => expand(item, i));
});

// 새로운 코드 추가

document.querySelector('.search-button').addEventListener('click', () => {
  window.location.href = 'search_results.html';
});

document.querySelector('.login-button').addEventListener('click', () => {
  window.location.href = 'login.html';
});
