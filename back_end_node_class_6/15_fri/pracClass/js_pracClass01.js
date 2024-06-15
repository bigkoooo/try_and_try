function call(name) {
    return new Promise(function (resolve, reject) {
        setTimeout(function() {
            resolve(name);
        }, 1000);
    });
}

function back(text) {
    return new Promise(function (resolve, reject) {
        setTimeout(function() {
            resolve(text);
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


call('kim')
    .then(function (resolve) {  
        console.log(resolve); 
        console.log(resolve + '반가워'); 

        return back('back'); 
    })
    .then(function (resolve) { 
        console.log(resolve); 
        console.log(resolve + '을 실행했구나'); 

        return hell('callback hell');
    })
    .then(function (resolve) { 
        console.log('여기는' + resolve); 
    })
