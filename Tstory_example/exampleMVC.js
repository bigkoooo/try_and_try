
    const mysql = require('mysql2'); // MySQL 모듈을 불러옴

    // MySQL 연결 풀 생성
    const pool = mysql.createPool({
        host: 'localhost', // 데이터베이스 호스트
        user: 'root',      // 데이터베이스 사용자
        password: 'password', // 데이터베이스 비밀번호
        database: 'mvc_example' // 데이터베이스 이름
    });
    
    // NoteModel 객체 정의
    const NoteModel = {
        // 모든 노트를 가져오는 메서드
        getAllNotes(callback) {
            pool.query('SELECT * FROM notes', (error, results) => { // SQL 쿼리를 실행하여 모든 노트를 선택
                if (error) throw error; // 오류가 발생하면 예외를 던짐
                callback(results); // 결과를 콜백 함수에 전달
            });
        }
    };
    
    module.exports = NoteModel; // NoteModel 객체를 모듈로 내보냄




const NoteModel = require('../models/noteModel'); // NoteModel 모듈을 불러옴

// NoteController 객체 정의
const NoteController = {
    // 노트를 보여주는 메서드
    showNotes(req, res) {
        NoteModel.getAllNotes((notes) => { // 모든 노트를 가져옴
            res.render('notes', { notes }); // 가져온 노트를 notes.ejs 뷰에 전달하여 렌더링
        });
    }
};

module.exports = NoteController; // NoteController 객체를 모듈로 내보냄





const express = require('express'); // Express 모듈을 불러옴
const router = express.Router(); // 라우터 객체 생성
const NoteController = require('../controllers/noteController'); // NoteController 모듈을 불러옴

router.get('/notes', NoteController.showNotes); // '/notes' 경로에 GET 요청이 들어오면 showNotes 메서드를 실행

module.exports = router; // 라우터 객체를 모듈로 내보냄



const express = require('express'); // Express 모듈을 불러옴
const app = express(); // Express 애플리케이션 객체 생성
const noteRoutes = require('./routes/noteRoutes'); // 노트 라우트 모듈을 불러옴

app.set('view engine', 'ejs'); // 뷰 엔진을 EJS로 설정

app.use('/', noteRoutes); // 루트 경로에 노트 라우트를 사용

app.listen(3000, () => { // 애플리케이션이 3000번 포트에서 듣기 시작
    console.log('Server is running on port 3000'); // 서버가 시작되었음을 로그로 출력
});