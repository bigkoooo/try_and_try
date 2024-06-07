//npm init -y => 기본값 모듈 생성
// node가 기본적으로 가지고 있는 module이 http

const http=require('http');
// console.log(http);

//http 모듈이 가지고 있는 서버 만드는 기능을 사용해보자
const server = http.createServer();
// 이런게 바로 이벤트 스라이븐, 이미 가지고 있는 메서드 를 발동시킨다

server.listen(8000, function () {
    console.log('8000포트에서 서버 실행 중');
})

// control + C 로 서버 실행 중지

// http://127.0.0.1/ => local com이라는 전세계 공통 IP 그리고 포트번호