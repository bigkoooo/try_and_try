// TODO: 컨트롤러 코드
const User = require('../model/User');

exports.main = (req, res) => {
    res.render('index');
};

exports.signUp = (req, res) => {
    res.render('signup')
}

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

exports.signIn = (req, res) => {
        res.render('signin');
};

exports.postsignIn = (req, res) => {
    User.postsignIn(req.body, (result, error)=> {
        if(error){
            return res.status(400).send({ message: error });
        }

        res.render('profile', { data: result });
    });
};

exports.postProfile = (req, res) => {
    const userid = req.body.userid;
    User.getUserById(userid, (result) => {
        res.render('profile', { data: result });
    });
};

// 회원 정보 수정
exports.patchProfile = (req, res) => {
    User.updateUser(req.body, (error) => {
        if (error) {
            return res.status(400).send({ message: error });
        }

        res.send({ message: '회원 정보가 수정되었습니다.' });
    });
};

// 회원 정보 삭제
exports.deleteProfile = (req, res) => {
    User.deleteUser(req.body.id, (error) => {
        if (error) {
            return res.status(400).send({ message: error });
        }

        res.send({ message: '회원 정보가 삭제되었습니다.' });
    });
};