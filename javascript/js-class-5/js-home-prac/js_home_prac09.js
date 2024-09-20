let fruits1 = ['사과', '딸기', '파인애플', '수박', '참외', '오렌지', '자두', '망고'];
let fruits2 = ['수박', '사과', '참외', '오렌지', '파인애플', '망고'];


// const same = fruits1.filter(function(fruits){
//    return fruits2.includes(fruits)
// });

const same = fruits1.filter((fruits)=> fruits2.includes(fruits))

// const diff = fruits1.filter(function (fruits) {
//     return ! fruits2.includes(fruits)
// });

const diff = fruits1.filter((fruits)=> !fruits2.includes(fruits));

console.log(same);
console.log(diff);