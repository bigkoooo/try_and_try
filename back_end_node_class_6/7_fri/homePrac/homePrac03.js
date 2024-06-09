const http = require('http');
const fs = require('fs');

const server = http.createServer((req,res)=>{
    let path = './'

    switch(req.url){
        case'/':
            path +='homePrac01.html' // ../views/node08.html
            res.statusCode =200;
        break;

        case'/about':
            path +='homePrac02.html' //../views/about.html
            res.statusCode=200;
        break;

        default:
            res.statusCode=400;
    }

    fs.readFile(path,(err,data)=>{
        if(err){
            console.log(err);
            res.end();
        } else (data)
            res.end(data);
    })
}).listen(3000, ()=>{
    console.log('8000번 실행중');
})