const http = require('http');
const server = http.createServer((req,res)=>{
    res.writeHead(200, {'Content-Type':'text/html'})
    res.end('<h2>Hello Bigkoo</h2>')
}).listen(8000, ()=>{
    console.log('8000번 포트에서 서버 실행중');
})