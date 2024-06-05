const test0 = document.getElementsByClassName('test0'); 
const test = document.getElementsByClassName('test');

test.innerText = '진짜 무뇌임이 틀림없다';

test0.append(test);
console.log(test);



// 요소 가져오기!
// const div1 = document.getElementById('div1');
// console.log(div1);

// 태그 내부 내용 변경
// innerHTML: 태그 사용 가능
// innerText, textContent: 태그가 문자(기호)로 그대로 노출.

// console.log("innerText > ", div1.innerText);

// console.log("textContent > ", div1.textContent);

// div1.innerHTML = '여기는 <b>첫번째</b> 태그!';
// console.log('innerHTML > ', div1);

// # innerText 와 textContent
// # 공통점
// - 둘 모두 텍스트를 추가한다.
// # 차이점
// innerText = HTML 태그를 해석하지 X, 보여지는 텍스트만 그대로
// textContent = HTML 태그를 포함하여 처리

// div1.innerText = "여기는 <b>두번째</b> 태그! "
// console.log(div1);
// div1.textContent = "여기는 <b>세번째</b> 태그!"
// console.log(div1);