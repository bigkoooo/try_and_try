const container = document.querySelector('.container');


const p2 = document.createElement('p');
const p3 = document.createElement('p');
const p4 = document.createElement('p');

p2.innerText = '<b>p2</b>';
p3.innerHTML = '<b>p3</b>';
p4.textContent = 'p4';


container.append(p2,p3,p4); // 여러개 추가 가능!