const http = require('http');
const fs = require('fs');
const url = require('url');

http.createServer(function(req, res){
    var q = url.parse(req.url, true)
    var filename = '.'+q.pathname
    fs.readFile(filename, function(err, data){
        if(err){
            res.writeHead(404, {'Context-Type':'text/html'})
            return res.end('404 Not found')

    
        }

        res.writeHead(200, {'Context-Type':'text/html'})
        return res.end(data)
    })
}).listen(3000,
    console.log('3000번 서버 실행중')
)