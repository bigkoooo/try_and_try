

exports.postsignUp = (req, res) => {
    User.postsignUp(req.body, (result, error) => {

        if(error) {
            return res.status(400).send({ message : error });
        }

        res.send({
            id: result,
            userid: req.body.userid,
            name: req.body.name,
            pw: req.body.pw
        });
    });
};

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
