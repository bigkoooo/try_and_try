const server = require('http');
const fs = require('fs');

server.createServer(()=>{

    let path = './views'

    switch (req.url) {
        case '/':
            path += 'node08.html'; // ./views/node08.js
            res.statusCode = 200;
            break;
        
        case '/about':
            path += 'about.html'; // ./views/node08.js
            res.statusCode = 200;
            break;    

        default:
            res.statusCode = 400;
            break;
    }

    fs.readFile(path, (error, data)=>{

        if (error) {
            console.log(error);
            res.end();
        } else {
            res.end(data);
        }


    })
}).listen(8000, 
    console.log('8000포트 열렸음')
)