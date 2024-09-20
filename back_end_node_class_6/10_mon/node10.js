// js  엔진, 구글: v8 + c++ = node.js, 브라우저 밖에서 js
// 모듈에는 사용자가 만든 모듈, 시스템 모듈, 빌드인 모듈

// const add = (a,b) => {
//     return a+b
// }
// // export해서 다른 파일이 불러와서 사용할 수 있게끔
// // 모듈단위, 불러올때 require() -> commonJS, es (import)

// console.log(dirname);
// console.log(filename);

// const add = require('./node11')
// console.log(add(1,2));
// console.log('From node10.js');

// scope(범위) 모듈은 각각의 범위를 가지고 있다.
// require('./node12');
// require('./node13');
// 같은 변수라도 모듈별로 각각 운영이 된다. 둘다 같은 변수 superman을 씀

// 모듈의 기초형태

// ()() 함수의 자동실행
(function(){
    const superHero = 'Superman'
    console.log(superHero);
})()
// 함수 이름 별도로 안불렀는데, 자동으로 실행됨 ->()이게 자동 실행이니깐 => 이게 모듈의 기본 형태이기 때문에
// 모듈의 형태
(function (exports, require, module, _filename, _dirname) {
    코드
})()