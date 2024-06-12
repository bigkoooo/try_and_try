// 구조분해 할당
// const arr1 =[1,2,3,4,5];
// const arr2 =['a','b','c'];

// const [one, two, three, four, five] = arr1;
// console.log(one, two, three, four, five);

// const [x , y, z, alpha] =arr2;
// console.log(x,y,z, alpha);

// let num1 =1;
// let num2 =2;
// 변수값의 교환, 2개의 변수값을 교환할때 제3의 변수 사용, 지금X

// console.log('Before:', num1, num2);
// [num2, num1] = [num1, num2]
// console.log('After:', num1, num2);

// const lists = ['apple', 'grape'];
// [f1,f2,f3='orange'] = lists;
// console.log(f1, f2, f3);

//객체, object : key 와 value 의 묶음, {}

// const obj = {
//     title: '엘리먼트',
//     content: 'fun',
//     num: 5
// }

// console.log(obj.num);
// console.log(obj.content);
// console.log(obj.title);
// console.log(obj['title']);
// console.log(obj['content']);
// console.log(obj['num']);

//객체 구조 분해, 디폴값을 줄수도 있다

// const {num, title, content,star=1000} = obj;
// console.log(num, title, content, star);

// const {a1, b1, c1} = obj; // 같은 이름을 사용해야지 키값에 없는거 사용하니 인식을 못함
// console.log(a1, b1, c1); // 그러니 결과는 undefined

//undefined : 변수는 할당되었지만(초기화), 값이 할당 된 것이 아님 => 둘이 별개의 스텝이라는 걸 알아야 함,  let = a;, a = 20;

const lectureInfo ={
    name : 'Coding on',
    part : 'web',
    leader : 'Kim',
}

// console.log(lectureInfo);
function getInfo(x) {
    const {name, part, leader} = x;
    const output = `${name} 강의는 ${part} 개발을 공부합니다. 수업 리더는 ${leader}`
    return output;
}

const result = getInfo(lectureInfo);
console.log(result);