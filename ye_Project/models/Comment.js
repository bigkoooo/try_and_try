module.exports = (sequelize, DataTypes) => {

  // 모델 정의
  const Comment = sequelize.define('Comment', {
    userid: {
      type: DataTypes.INTEGER, 
      allowNull: false,
    },
    comment_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
    },
    comment_contents: {
      type: DataTypes.TEXT,
      allowNull: false,
    },
  }, {
    tablename: 'Comment',
    freezeTableName: true,
    timestamps: true,
    // 내보낼때 tablename을 안해주면 대소문자 구별이 안됨(필요)
  });


  // 모든 댓글 조희
  Comment.getAll = async function() {
    return await Comment.findAll();
  };

  // 특정 ID에 해당하는 댓글 조회 > 유저별 수정 및 삭제 기능 생성을 위해 
  Comment.getById = async function(id) {
    return await Comment.findByPk(id);
  };

  // 새로운 댓글 추가 
  Comment.add = async function(commentData) {
    return await Comment.create(commentData);
  };

  // 특정 ID에 해당하는 댓글 업데이트 
  Comment.updateComment = async function(id, updatedData) {
    const comment = await Comment.getById(id);
    if (!comment) throw new Error('Comment not found');
    return await comment.update(updatedData);
  };

  // 특정 ID에 해당하는 댓글 삭제 
  Comment.remove = async function(id) {
    const comment = await Comment.getById(id);
    if (!comment) throw new Error('Comment not found');
    return await comment.destroy();
  };

  return Comment;
};
