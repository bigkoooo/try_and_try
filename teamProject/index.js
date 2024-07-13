const prefix = '20살 돈이 ';
const skills = [
  '있다??',
  '없다..',
  '없다 그래서 카드가 필요 없다??',
  '없다, 아니 그래서 The 카드가 필요하다!!!',
].map(s => `${s}`);
const delay = 2;
const step = 1;
const tail = 5;
const timeout = 75;

const p = document.createElement('p');
document.body.appendChild(p);

const colors = [
  'red',
  'green',
  'blue',
  'yellow',
  'cyan',
  'magenta',
];
function getRandomColor() {
  return colors[Math.floor(Math.random() * colors.length)];
}
function getRandomChar() {
  return String.fromCharCode(Math.random() * (127 - 33) + 33);
}
function getRandomColoredString(n) {
  const fragment = document.createDocumentFragment();
  for (let i = 0; i < n; i++) {
    const char = document.createElement('span');
    char.textContent = getRandomChar();
    char.style.color = getRandomColor();
    fragment.appendChild(char);
  }
  return fragment;
}

const $ = {
  text: '',
  prefixP: -tail,
  skillI: 0,
  skillP: 0,
  direction: 'forward',
  delay,
  step,
};

function render() {
  const skill = skills[$.skillI];

  if ($.step) {
    $.step--;
  } else {
    $.step = step;
    if ($.prefixP < prefix.length) {
      if ($.prefixP >= 0) {
        $.text += prefix[$.prefixP];
      }
      $.prefixP++;
    } else {
      if ($.direction === 'forward') {
        if ($.skillP < skill.length) {
          $.text += skill[$.skillP];
          $.skillP++;
        } else {
          if ($.delay) {
            $.delay--;
          } else {
            $.direction = 'backward';
            $.delay = delay;
          }
        }
      } else {
        if ($.skillP > 0) {
          $.text = $.text.slice(0, -1);
          $.skillP--;
        } else {
          $.skillI = ($.skillI + 1) % skills.length;
          $.direction = 'forward';
        }
      }
    }
  }

  p.textContent = $.text;
  p.appendChild(getRandomColoredString(
    $.prefixP < prefix.length ?
    Math.min(tail, tail + $.prefixP) :
    Math.min(tail, skill.length - $.skillP)));

    // 페이지 이동 조건 추가
    if ($.skillI === skills.length - 1 && $.skillP === skill.length && $.direction === 'forward' && $.delay === 0) {
        window.location.href = 'categoryPage_1.html';
        return; // 페이지 이동 후 렌더링 중단
    }

  setTimeout(render, timeout);
}

// p 요소에 클릭 이벤트 리스너 추가
p.addEventListener('click', () => {
    window.location.href = 'categoryPage_1.html';
  });

setTimeout(render, 500);
