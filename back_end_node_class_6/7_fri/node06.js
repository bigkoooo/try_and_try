const http = require('http');
const server = http.createServer(function (req,res) {
   
    res.writeHead(200, {'Content-Type':'text/html'})
   
    res.end(`<h2>Hello 민석</h2>`)

}).listen(3000, () => {
    console.log('3000포트에서 실행 중');    
});

