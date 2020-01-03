const express = require('express');
const router = express.Router();

const BookService = require('../services/book')

router.get('/', function (req, res) {
  console.log("GET '/book'")
  const bookServiceObj = new BookService(req, res)
  bookServiceObj.getAll()
})

module.exports = router;