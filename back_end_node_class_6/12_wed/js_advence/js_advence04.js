// &&(and)  || (or)
// ture && ture
// ture && false


const x =5;
const result = x || 100; //
console.log(result);

const y = 7;
const result3 = x < y && 'yy가 큼';
console.log(result3); //

//falsy의 경우 undefined, null, 0, false, '', NaN
// let userColor = 'red' ;
// let defaultrColor = 'blue' ;
// let currentColor = userColor || defaultrColor;
// console.log(currentColor);    => red
// let userColor = undefined ;
// let defaultrColor = 'blue' ;
// let currentColor = userColor || defaultrColor;
// console.log(currentColor);     => blue
