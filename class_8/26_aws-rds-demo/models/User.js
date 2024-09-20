const { DataTypes } = require('sequelize');

module.exports = (sequelize) => {
    return sequelize.define('User', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        username: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        email: {
            type: DataTypes.STRING,
            allowNull: false,
            unique: true,
        },
    }, {
        tableName: 'users', // 명시적으로 테이블 이름을 지정할 수 있습니다. 그렇지 않으면 Sequelize는 모델 이름의 복수형을 사용합니다.
        timestamps: true, // createdAt 및 updatedAt 타임스탬프를 자동으로 추가합니다.
    });
};
