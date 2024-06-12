
// 파일 삭제
const { log } = require('console');
const fs = require('fs');
// fs.unlink('mynewfiles2.txt', function(){
//     console.log('파일삭제 완료');
// })

// 파일이름변경
fs.rename('mynewfile1.txt', 'renamefile1.txt', function (err) {
    if(err) throw err;

    console.log('파일이름 변경 완료');
})
