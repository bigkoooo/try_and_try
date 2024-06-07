const container = document.querySelector('.container');


const p2 = document.createElement('p');
const p3 = document.createElement('p');
const p4 = document.createElement('p');

p2.innerText = '<b>p2</b>';
p3.innerHTML = '<b>p3</b>';
p4.textContent = '<b>p4</b>';


container.append(p2,p3,p4); // 여러개 추가 가능!


const container2 = document.querySelector('.container2')


console.log(container2.innerText);
  

console.log(container2.innerHTML);
  

console.log(container2.textContent);
  