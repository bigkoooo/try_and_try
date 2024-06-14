function call(name, cb) {
    return new Promise(function (resolve, reject) {
        setTimeout(function() {
            console.log(name);
            
            resolve(cd);
        }, 1000);
    });
}

function back(cb) {
    return new Promise(function (resolve, reject) {
        setTimeout(function() {
            console.log('back');
            
            resolve(back);
        }, 1000)
    });
}

function hell(cb) {
    return new Promise(function (resolve, reject) {
        setTimeout(function() {
            
            resolve(hell);
        }, 1000);
    });
}


call('kim', kim)
    .then(function (result) {  
        console.log(result); 

        return mul(result); 
    })
    .then(function (result) { 
        console.log(result + '을 실행했구나'); 

        return sub(result);
    })
    .then(function (result) { 
        console.log('여기는' + result); 
    })
