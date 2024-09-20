let fruits1 = ['사과', '딸기', '파인애플', '수박', '참외', '오렌지', '자두', '망고'];
let fruits2 = ['수박', '사과', '참외', '오렌지', '파인애플', '망고'];

let same = [];
let diff = [];


for (let fruits = 0; fruits < fruits1.length; fruits++) {
    let s = fruits2.indexOf(fruits1[fruits])
    if (s<0) {
        diff.push(fruits1[fruits]);
    } else {
        same.push(fruits1[fruits]);
    }
}

console.log(same);
console.log(diff);

let square = function square(x) {
    return x*x;
  };
  
  console.log(square(5));

//   여기서도 다시 git push가 잘되는 걸까?

let chec = Boolean(3 !== '3');

console.log(chec);

for(let i = 1; i <4; i++){function printMsg(i) {
            
    console.log((i.toUpperCase()));
// TODO: 조건을 만족하는 printMsg 함수를 완성해주세요.
}}

printMsg('i love you');
// TODO: 해당 html 파일을 실행한 브라우저 콘솔창에서 printMsg 함수를 호출해주세요!
// printMsg('I love you! <3');

console.log(typeof 'first'); 

function firstLetterBig(str) {
    // TODO: 조건을 만족하는 firstLetterBig 함수를 완성해주세요.
    let first =str[0];
    let firstUp = first.toUpperCase();
    let leftstr = str.slice(1, str.length);
    let fullstr = firstUp + leftstr;
    console.log(fullstr);
  }

  // TODO: 해당 html 파일을 실행한 브라우저 콘솔창에서 firstLetterBig 함수를 호출해주세요!

  firstLetterBig('happy');
  firstLetterBig('lucky');
  firstLetterBig('hi there!');

  let x =2;

  switch (x) {
    case 1:
    case 2:
        console.log('a');
        console.log('b');
    case 3:
        console.log('c');
        break;
    case 4:
    
        break;
  
    default:
        console.log('f');
       
  }

  const person = {
    age : 30,
  }

  person[age] = 40;

  