const Visitors = require('../model/Visitor');

exports.main = (req, res) => {
    res.render('index');
};

exports.getVisitors = (req, res) => {
    console.log(Visitors.getVisitors());
    res.render('visitor', {data: Visitor.getVisitors()});
};