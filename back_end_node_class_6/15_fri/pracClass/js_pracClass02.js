function call(name) {
    return new Promise(function (resolve, reject) {
        setTimeout(function() {
            resolve(name);
            console.log(name); 
            
        }, 1000);
    });
}

function back(text) {
    return new Promise(function (resolve, reject) {
        setTimeout(function() {
            resolve(text);
            console.log(text); 
            
        }, 1000)
    });
}

function hell(message) {
    return new Promise(function (resolve, reject) {
        setTimeout(function() {
            resolve(message);
            
        }, 1000);
    });
}





    async function execute() {
        try{
            let name = await call('kim')
            console.log(name + '반가워'); 
            let text = await back('back');
            console.log(text + '을 실행했구나'); 
            let message = await hell('callback hell'); 
            console.log('여기는' + message); 
        }   catch (err){
            console.log('err났습니더');
        }  
        } 
    
    
    execute();