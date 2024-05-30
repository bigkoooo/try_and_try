// for(let i = 0; i <100; i++){
//     if(i == 10){
//         console.log('멈춰');
//         break;
//     };
//     console.log(i);
// }

// let yeon = 0;
// for(let i = 0; i<100; i++){
//     if(i%2 ==0){
//         continue;
//     };

//     yeon += i;

// }

// console.log(yeon);

// let yeon = 0;
// for (let i= 1; i < 100; i++) {
//     if(i%2==0 || i%3==0){
//         yeon += i;
//     };
    
// }

// console.log(yeon);

// let yeon = 0;
// let i = 1;
// while (true) {
//     if ( i % 2== 0 || i % 3 == 0) {
//         if(i ==100)break;  
//         yeon += i;
//     }
//     i++;
// }

// console.log(yeon);

// let yeon = 0;
// let i = 1;
// for (let i = 0; i < 100; i++) {
//     if (i % 6 == 0) {
//         if ( i % 4 ==0) {
//             continue;
//         }
//      yeon +=i;
//     }
    
// }

// console.log(yeon);


// let numbers = [1, 2, 3, 4, 5, 6];
// let fruits = ["사과", "바나나", "수박", "포도", "파인애플"];

// numbers.forEach(function (number, index, array) {
//   console.log(number, index, array);
// });


// fruits.forEach(function (fruit, i, arr) {
//     console.log(fruit, i, arr);
//   });

//   const words = [
//     "spray",
//     "limit",
//     "elite",
//     "exuberant",
//     "destruction",
//     "present",
//   ];
//   const result = words.filter((word) => word.length > 6);
//   console.log(result);

 let numbers = [1, 2, 3, 4, 5, 6];
  
 let arr = numbers.filter(function (numbers) {
    return numbers > 3;
 });

 console.log(arr);