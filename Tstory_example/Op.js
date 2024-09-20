const { Op } = require('sequelize');

const users = await db.User.findAll({
    where: {
        age: {
            [Op.eq]: 25
        }
    }
});
// SQL: SELECT * FROM Users WHERE age = 25;


const users = await db.User.findAll({
    where: {
        age: {
            [Op.gt]: 18
        }
    }
});
// SQL: SELECT * FROM Users WHERE age > 18;

const users = await db.User.findAll({
    where: {
        age: {
            [Op.in]: [20, 25, 30]
        }
    }
});
// SQL: SELECT * FROM Users WHERE age IN (20, 25, 30);

const users = await db.User.findAll({
    where: {
        age: {
            [Op.notIn]: [20, 25, 30]
        }
    }
});
// SQL: SELECT * FROM Users WHERE age NOT IN (20, 25, 30);


const users = await db.User.findAll({
    where: {
        age: {
            [Op.ne]: 25
        }
    }
});
// SQL: SELECT * FROM Users WHERE age != 25;

const users = await db.User.findAll({
    where: {
        age: {
            [Op.not]: null
        }
    }
});
// SQL: SELECT * FROM Users WHERE age IS NOT NULL;

const users = await db.User.findAll({
    where: {
        name: {
            [Op.like]: '%John%'
        }
    }
});
// SQL: SELECT * FROM Users WHERE name LIKE '%John%';
