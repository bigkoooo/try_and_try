const fs = require('fs')
const path = require('path');

// fs.mkdir(path.join(__dirname,'text'), (err)=>{
//     if(err){
//         console.log(err);
//     }
//     console.log('디렉토리 생성완료');
// })

fs.rmdir(path.join(__dirname,'text'), (err)=>{
    if(err){
        return console.log(err);
    }
    console.log('디렉토리 삭제 완료');
})