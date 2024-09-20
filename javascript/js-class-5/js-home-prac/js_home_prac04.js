// const color = ["red", "orange", "yellow", "green", "skyblue", "blue", "black"];
// console.log(color[2]);
// color.push("pink");
// console.log(color);
// console.log(color.indexOf("black"));
// console.log(color.reverse());

const koooo = {
    name : 'kimminseok',
    age : '36',
    gender: 'male',
    favorite: 'yeon',

};

console.log(`제 이름은 ${koooo.name} 나이는 ${koooo.age} 성별은 ${koooo.gender} 
좋아하는 것은 ${koooo.favorite}입니다.!`);

let num = 123;
let a = String(num);
console.log(typeof a);

let b = num.toString();
console.log(typeof b);

let sayHello = function () { 
    console.log('Hello');
};

sayHello();

const multiufly = function (num1,num2) {
    return(num1 * num2)    
};

console.log(multiufly(11,17));