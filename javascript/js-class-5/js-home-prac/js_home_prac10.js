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