// let age = prompt('plz input age');

// if (age>=20) {
//     console.log('성인');
// }else if(age>=17){
//     console.log('고등학생');
// }else{
//     console.log('어린이');
// }

let now = new Date().getHours();
now>0 && now<12 ? console.log('오전'):console.log('오후');