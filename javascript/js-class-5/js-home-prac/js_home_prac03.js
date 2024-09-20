
// let number = prompt('숫자를 입력해주세요')


// if (number>120 || 0> number) {
//     console.log('세상에 존재하지 않습니다.');
// } else if (number >=20){console.log('돈이 없음');}
// else if (number >=17){console.log('성적 없음');}
// else if (number >=14){console.log('여친 없음');}
// else if (number >=8){console.log('아무 생각 없음');}
// else if (number >=0){console.log('아무 기억 없음');}

let number = prompt('숫자를 입력해주세요')

function miseryIndex(number) {
    
    if (number>120 || 0> number) {
    console.log('IN 천국.');
    } else if (number >=20){console.log('돈이 없음');}
    else if (number >=17){console.log('성적 없음');}
    else if (number >=14){console.log('여친 없음');}
    else if (number >=8){console.log('아무 생각 없음');}
    else if (number >=0){console.log('아무 기억 없음');}

}

miseryIndex(number);