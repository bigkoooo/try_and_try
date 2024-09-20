const Visitor = require('../model/Visitor');

exports.main = (req, res) => {
    res.render('index');
};

exports.getVisitors = (req, res) => {
    Visitor.getVisitors((result) => {
        res.render('visitor', { data: result});
    })
};

exports.postVisitor = (req, res) => {
    Visitor.postVisitor(req.body, (result)=> {
        res.send({id:result,
        name: req.body.name,
        comment: req.body.comment
        })
    });
}