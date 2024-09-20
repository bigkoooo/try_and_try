const { getDbComments } = require('../model/comment');

exports.getMain = (req, res) => {
    res.render('index')
}

exports.getComments = (req, res) => {
    res.render('comments', {comments: getDbComments()});
};

exports.getComment = (req, res) => {
    console.log(req.params);
    console.log(req.params.id);

    const commentId = req.params.id;
    const dbComments = getDbComments();
    console.log(dbComments[commentId - 1]);

    if(!dbComments[commentId -1]){
        return res.render('404')
    }

    res.render('comment', {comment: dbComments [ commentId -1 ]});
}