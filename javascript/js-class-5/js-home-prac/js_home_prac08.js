let arr =[];

for (let i = 1; i <= 100; i++){
    arr.push(i);
 }
 console.log(arr);

 let sum = 0;

 for (let i = 1; i <= arr.length; i++) {
    sum += i;
}

console.log(sum);

let sumof = 0;

for (x of arr){
    sumof += x;
}
console.log(sumof);

let sumeach = 0;

arr.forEach(function(x) {
    sumeach +=x;
})
console.log(sumeach);