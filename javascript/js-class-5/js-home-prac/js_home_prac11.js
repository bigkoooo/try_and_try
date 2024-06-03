let number1 = ['1', '2' , '3', '4', '5'];
let number2 = ['2' , '3', '4'];

// const same = number1.filter((number)=>number2.includes(number));
const same = number1.filter(function (number) { return number2.includes(number);
    
})

console.log(same);

// const differ = number1.filter(
//     function (number) { return ! number2.includes(number);
//     });

const differ = number1.filter((number)=> ! number2.includes(number));

console.log(differ);