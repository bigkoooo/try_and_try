const { Comment, User } = require('../models');




// 모든 댓글 조회
exports.showComments = async (req, res) => {
  const allComments = await Comment.getAll({
      include: [{
        model: User,
        attributes: ['nickname'],
      }],
  });
  // console.log(allComments); //댓글테이블 모두! 닉네임 포함해서! 
  res.render('comment', { comments: allComments, user: req.user });
  // console.log(req.user); // { userId: 2, iat: 1720755544, exp: 1720759144 }
};



// 댓글 생성
exports.addComment = async (req, res) => {
  if (!req.user) {
    return res.status(401).json({ message: 'Unauthorized' });
  }

  const { comment_contents } = req.body;
  const newComment = {
    comment_contents,
    userid: req.user.userId,
  };
  await Comment.add(newComment);
  console.log(newComment);
  res.status(200).json({ message: 'Comment added' });
};


// 댓글 수정 
exports.editComment = async (req, res) => {
  if (!req.user) {
    return res.status(401).json({ message: 'Unauthorized' });
  }

  const { id } = req.params;
  const { comment_contents } = req.body;
  const comment = await Comment.getById(id);

  if (comment.userId !== req.user.userd) {
    return res.status(403).json({ message: 'Forbidden' });
  }

  await Comment.updateComment(id, { comment_contents });
  res.status(200).json({ message: 'Comment updated' });
};


// 댓글 삭제 
exports.deleteComment = async (req, res) => {
  if (!req.user) {
    return res.status(401).json({ message: 'Unauthorized' });
  }

  const { id } = req.params;
  const comment = await Comment.getById(id);

  if (comment.userid !== req.user.userId) {
    return res.status(403).json({ message: 'Forbidden' });
  }

  await Comment.remove(id);
  res.status(200).json({ message: 'Comment deleted' });
};
