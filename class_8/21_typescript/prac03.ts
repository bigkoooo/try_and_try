// 두 개의 수를 매개 변수로 받고 합을 console.log 로 출력하는 함수 sum1 만들기



function sum1(a:number, b:number) : any {
    console.log( a + b);
};

sum1(5, 11); // 테스트는 이렇게 하기!


// 매개 변수로 여러 개의 수를 받고 전달된 값을 모두 더하는 함수 sum2
// 모두 합산한 값을 "return" 합니다.
// Hint: 전개 연산자 이용하기

// function sum2(a:number, b:number, c:number, d:number, e:number) : any {
//     return a + b + c + d + e;
// };

function sum2(...number:number[]): any {
    let total = 0;

    for(let i=0; i <number.length; i ++){
        total += number[i]
    }

    return total;
}

// 테스트는 이렇게!
console.log(sum2(1, 2, 3, 4, 10)); // 20
