// const eatLunch = document.querySelectorAll("ul > li")
// eatLunch.forEach((x)=>{
//     x.classList.toggle('todo');
//     x.classList.toggle('done');
// })

const eatLunch = document.querySelectorAll('[class = todo]');

console.log(eatLunch);

const afterLunch = document.querySelectorAll('[class = done]');

console.log(afterLunch);

eatLunch.forEach(eat => {
    eat.classList.remove('todo');
    eat.classList.add('done');

});
afterLunch.forEach(after => {
    after.classList.remove('done');
    after.classList.add('todo');
});
