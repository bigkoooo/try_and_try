let mathScore = prompt('수학점수 입력');
console.log("mathScore >" , mathScore);

let engScore = prompt('영어점수 입력');
console.log("engScore >" , engScore);


console.log(Number(mathScore), typeof Number(mathScore));
console.log(Number(engScore), typeof Number(engScore));



let avg = ((Number(mathScore) + Number(engScore))/2);
console.log(avg);
console.log(`평균점수는 ${avg} 입니다`);


