const http = require('http')
const sever = http.createServer((req,res)=>{
    var _url = req.url;
    res.writeHead(200, {'Content-Type':'text/html'})
    res.write('<h2>clamberUp</h2>')
    res.end(`<p>_${_url}_</p>`)
}).listen(8000, ()=>{
    console.log('8000서버 실행 중');
})