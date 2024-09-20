const { User } = require('../models');
const { hashPassword, comparePassword } = require('../utils/encrypt'); // 유틸리티 함수 가져오기
const jwt = require('jsonwebtoken');
const secretKey = process.env.JWT_SECRET || 'your_secret_key';

exports.main = (req, res) => {
    res.render('index');
};

exports.signUp = (req, res) => {
    res.render('signup');
}

exports.postsignUp = async (req, res) => {
    try {
        const { userid, name, pw } = req.body;

        const existingUser = await User.findOne({ where: { userid } });
        if (existingUser) {
            return res.status(400).send({ message: 'User ID already exists' });
        }

        const hashedPassword = await hashPassword(pw); // 비밀번호 해싱
        const newUser = await User.create({ userid, name, pw: hashedPassword });
        res.send({ id: newUser.id, userid, name });
    } catch (error) {
        res.status(500).send({ message: error.message });
    }
};

exports.signIn = (req, res) => {
    res.render('signin');
};

exports.postsignIn = async (req, res) => {
    try {
        const { userid, pw } = req.body;
        const user = await User.findOne({ where: { userid } });

        if (!user) {
            return res.status(400).send({ message: 'Invalid credentials' });
        }

        const match = await comparePassword(pw, user.pw); // 비밀번호 비교
        if (!match) {
            return res.status(400).send({ message: 'Invalid credentials' });
        }

        // JWT 생성
        const token = jwt.sign({ userid: user.userid }, secretKey, { expiresIn: '1h' });
        res.send({ message: '로그인 성공', token });
    } catch (error) {
        res.status(500).send({ message: error.message });
    }
};

exports.postProfile = async (req, res) => {
    try {
        const { userid } = req.user;
        const user = await User.findOne({ where: { userid } });
        res.render('profile', { data: user });
    } catch (error) {
        res.status(500).send({ message: error.message });
    }
};

exports.checkToken = (req, res) => {
    if (req.user) {
        res.json({ loggedin: true });
    } else {
        res.json({ loggedin: false });
    }
};

exports.logout = (req, res) => {
    res.send({ message: '로그아웃 되었습니다.' });
};

exports.patchProfile = async (req, res) => {
    try {
        const { id, pw, name } = req.body;
        const hashedPassword = await hashPassword(pw); // 비밀번호 해싱
        await User.update({ pw: hashedPassword, name }, { where: { id } });
        res.send({ message: '회원 정보가 수정되었습니다.' });
    } catch (error) {
        res.status(500).send({ message: error.message });
    }
};

exports.deleteProfile = async (req, res) => {
    try {
        const { id } = req.body;
        await User.destroy({ where: { id } });
        res.send({ message: '회원 정보가 삭제되었습니다.' });
    } catch (error) {
        res.status(500).send({ message: error.message });
    }
};
