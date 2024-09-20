module.exports = (sequelize, DataTypes) => {
    const User = sequelize.define('member', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        userid: {
            type: DataTypes.STRING,
            allowNull: false,
            unique: true
        },
        name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        pw: {
            type: DataTypes.STRING,
            allowNull: false
        }
    }, {
        freezeTableName: true, // 테이블 이름 고정
        timestamps: false // createdAt 및 updatedAt 비활성화
    });

    return User;
};
