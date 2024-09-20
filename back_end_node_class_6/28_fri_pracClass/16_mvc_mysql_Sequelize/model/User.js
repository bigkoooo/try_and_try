// TODO: DB(mysql) 연결
const mysql = require('mysql');

const conn = mysql.createConnection({
    host:'localhost',
    user:'user1',
    password:'12345678',
    database:'codingon'
})
// TODO: 모델 코드

exports.postsignUp = (data, callback) => {

    //중복 아이디 확인 쿼리
    const checkQuery = `SELECT * FROM user WHERE userid = ? `
    conn.query(checkQuery, [data.userid], (err, rows) => {
        if (err) {
            throw err;
        }

        if(rows.length > 0) {
            callback(null, 'User ID already exists');
        } else{
            const insertQuery = `INSERT INTO user (userid, name, pw) VALUES (?, ?, ?)`;
            const values = [data.userid, data.name, data.pw];

            conn.query(insertQuery, values, (err, rows) => {
                if(err){
                    throw err;
                }

                console.log('model/User.js>>', rows);
                callback(rows.insertId, null)
            });
        }
    });
};

exports.postsignIn = (data, callback) => {
    const query = `SELECT * FROM user WHERE userid = ? AND pw = ?`;
    const values = [data.userid, data.pw];

    conn.query(query, values, (err, rows) => {
        if (err) {
            throw err;
        }

        if (rows.length === 0) {
            callback(null, 'Invalid credentials');
        } else {
            callback(rows[0], null); // 로그인 성공 시 사용자 정보를 반환
        }
    });
};

exports.getUserById = (userid, callback) => {
    const query = `SELECT * FROM user WHERE userid = ?`;
    conn.query(query, [userid], (err, rows) => {
        if (err) {
            throw err;
        }

        callback(rows[0]);
    });
};

// 회원 정보 수정
exports.updateUser = (data, callback) => {
    const query = `UPDATE user SET pw = ?, name = ? WHERE id = ?`;
    const values = [data.pw, data.name, data.id];

    conn.query(query, values, (err, result) => {
        if (err) {
            callback(err);
        } else {
            callback(null);
        }
    });
};

// 회원 정보 삭제
exports.deleteUser = (id, callback) => {
    const query = `DELETE FROM user WHERE id = ?`;
    conn.query(query, [id], (err, result) => {
        if (err) {
            callback(err);
        } else {
            callback(null);
        }
    });
};
