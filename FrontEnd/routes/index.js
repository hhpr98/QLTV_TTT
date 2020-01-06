var express = require('express');
var router = express.Router();
//const http = require('http');
//const https = require('https');
//var jsonnnn = require('../controller/getJSON.js');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index',{redirectPage:'',namePage:'Trang chủ'});
});

var datBook = [
        {"id":1,"name":"Nhập môn lập trình","author":"KHTN","type":"Sách giáo khoa","NXB":"KHTN"},
        {"id":2,"name":"Kĩ thuật lập trình","author":"KHTN","type":"Sách giáo khoa","NXB":"KHTN"},
        {"id":3,"name":"Dorenmon tập 111","author":"unknow","type":"Truyện tranh","NXB":"Kim Đồng"},
        {"id":4,"name":"Nghìn lẻ một đêm","author":"unknow","type":"Truyện","NXB":"unknow"},
        ];

router.get('/book-management', function(req, res, next) {
  /*
  jsonnnn.getJSON({
    host: 'localhost:4200',
    path: '/api/book',
    method: 'GET'
  }).then(({status, data}) => {
    res.json(data);
  }, (error) => {
    next(error);
  });
   */

  //Window.alert("111")
  console.log(datBook);
  res.render('book-management',{redirectPage:'book-management',namePage:'Quản lí sách',datBook:datBook});
});



router.get('/book-add', function(req, res, next) {
  res.render('book-add',{redirectPage:'book-add',namePage:'Thêm sách'});
});
router.get('/profile', function (req, res, next) {
  res.render('profile',{redirectPage:'profile',namePage:'Thông tin tài khoản'});
});
router.get('/quanlitramuon', function (req, res, next) {
  res.render('QuanLiTraMuon',{redirectPage:'quanlitramuon',namePage:'Quản lí trả mượn'});
});
router.get('/maps', function (req, res, next) {
  res.render('maps',{redirectPage:'maps',namePage:'Bản đồ'});
});

module.exports = router;


