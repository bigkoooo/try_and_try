const db = require('../models');

// 모델에서 혜택 top3 조회 함수
const getTop3Cards = async (category) => {
    // 카테고리 이름 + '_rankg' > 카드모델에서 지정된 랭킹 관련 컬럼명 규칙!
    const rankingColumn = `${category}_ranking`;

    const cards = await db.Card.findAll({
        where: {
            [rankingColumn]: {
                // 랭킹컬럼이 null이 아닌 카드 필터링해서 가져옴
                [db.Sequelize.Op.not]: null
            }
        },
        // top3 가져오기!
        order: [[rankingColumn, 'ASC']],
        limit: 3
    });
    return cards;
};

// 가져온 혜택 top3 -> commend.ejs 전달
const showTop3Cards = async (req, res) => {
    const category = req.query.category;
    try {
        const cards = await getTop3Cards(category);
        res.render('commend', { category, cards });
        // 여기서 카테고리값이랑 top3카드 정보 프론트에 전달! 
    } catch (error) {
        console.error('Error fetching cards:', error);
        res.status(500).send('Internal Server Error');
    }
};

module.exports = {
    showTop3Cards
};
