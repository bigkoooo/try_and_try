const jwt = require('jsonwebtoken');

const authenticateToken = (req, res, next) => {
    const token = req.cookies['token'];
    if (token == null) {
      req.user = null;
      return next();
    }
  
    jwt.verify(token, process.env.JWT_SECRET, (err, user) => {
      if (err) {
        req.user = null;
        return next();
      }
      req.user = user;
      next();
    });
  };
  module.exports = authenticateToken;
