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
    User.postsignIn(req.body, (result, error) => {
        if (error) {
            return res.status(400).send({ message: error });
        }

        req.session.loggedin = true;
        req.session.userId = result.userid;
        res.send({ message: '로그인 성공' });
    });
};

exports.postProfile = (req, res) => {
    
    const userid = req.body.userid;
    User.getUserById(userid, (result) => {
      res.render('profile', { data: result });
    });
  };

//세션 만료되면 튕기게 하는 거
  exports.checkSession = (req, res) => {
    if (req.session.loggedin && req.session.userId) {
        res.json({ loggedin: true });
    } else {
        res.json({ loggedin: false });
    }
};

//로그아웃
exports.logout = (req, res) => {
    req.session.destroy((err) => {
      if (err) {
        return res.status(500).send({ message: '로그아웃 중 오류가 발생했습니다.' });
      }
      res.clearCookie('connect.sid'); // 세션 쿠키 제거
      res.send({ message: '로그아웃 되었습니다.' });
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