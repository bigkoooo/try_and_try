function changeColor(color) {
    return new Promise((resolve,reject)=>{
        setTimeout(()=>{
            
            // document.body.style.backgroundColor = color;
            console.log(`지금 이게 돌아가고 있는거냐? ${color}`);
            resolve(color);
        }, 1000);
    });
};

async function execute() {
   try {
        await changeColor('red');
        await changeColor('orange');
        await changeColor('yellow');
        await changeColor('green');
        await changeColor('blue');
   } catch(err) {
        console.log('맛가 부렀다');
   }
};

execute();