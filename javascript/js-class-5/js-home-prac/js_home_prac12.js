let number =[];


for (let i = 1; i <= 100; i++) {
    number.push(i);
    
};

console.log(number);

let sum =0;

// for (let i = 1; i <= number.length; i++) {
//     sum += i;
    
// };

// console.log(sum);

// for ( num of number) {
//     sum += num;
// };

// console.log(sum);

number.forEach(num => {
    sum +=num
});

console.log(sum);