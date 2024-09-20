var http = require('http');
var url = require('url');
var fs = require('fs');
// 127.0.0.1:3000포트로 접속해서 node27.html, node27_1.html
http.createServer(function (req,res) {
    // req에 사용자가 원하는 파일를 가지고 있어야 함
    var q = url.parse(req.url, true);
    var filename = '.'+q.pathname;

    fs.readFile(filename, function(err, data){
        if(err){
            res.writeHead(400, {'Content-Type':'text/html'});
            return res.end('File not found');
        }
        res.writeHead(200, {'Content-Type':'text/html'})
        res.write(data)
        return res.end();
    })
}).listen(3000,()=>{
    console.log('3000서버 실행 중');
})