var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index',{redirectPage:'',namePage:'Trang chủ'});
});

router.get('/book-management', function(req, res, next) {
  res.render('book-management',{redirectPage:'book-management',namePage:'Quản lí sách'});
});

router.get('/profile', function (req, res, next) {
  res.render('profile',{redirectPage:'profile',namePage:'Thông tin tài khoản'});
});

module.exports = router;
