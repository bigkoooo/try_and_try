const bcrypt = require('bcrypt');

// 비밀번호 해싱 함수
const hashPassword = async (password) => {
    const saltRounds = 10;
    const hashedPassword = await bcrypt.hash(password, saltRounds);
    return hashedPassword;
};

// 비밀번호 비교 함수
const comparePassword = async (password, hashedPassword) => {
    const match = await bcrypt.compare(password, hashedPassword);
    return match;
};

module.exports = { hashPassword, comparePassword };
