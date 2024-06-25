const mysql = require('mysql');

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'user1',
    password: '12345678',
    database: 'codingon'
});

exports.getVisitors = (callback) => {
    conn.query(`select * from visitor`, (err,rows) => {
        if(err){
            throw err;
        }

        callback(rows)
    })
};

exports.postVisitor = (data, callback) => {
    conn.query(`insert into visitor(name, comment) values ('${data.name}','${data.comment}')`,
        (err, rows) => {
            if (err) {
                throw err;
            }

            callback(rows.insertId)
        }
    )
}