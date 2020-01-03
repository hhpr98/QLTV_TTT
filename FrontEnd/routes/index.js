var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index',{redirectPage:'',namePage:'Trang chủ'});
});

router.get('/book-management', function(req, res, next) {
  res.render('book-management',{redirectPage:'book-management',namePage:'Quản lí sách'});
});
router.get('/book-add', function(req, res, next) {
  res.render('book-add',{redirectPage:'book-add',namePage:'Thêm sách'});
});
router.get('/profile', function (req, res, next) {
  res.render('profile',{redirectPage:'profile',namePage:'Thông tin tài khoản'});
});
router.get('/quanlitramuon', function (req, res, next) {
  res.render('QuanLiTraMuon',{redirectPage:'QuanLiTraMuon',namePage:'Thông tin tài khoản'});
});
router.get('/maps', function (req, res, next) {
  res.render('maps',{redirectPage:'maps',namePage:'Bản đồ'});
});

module.exports = router;
