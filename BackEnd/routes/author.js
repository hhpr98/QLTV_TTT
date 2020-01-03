const express = require('express');
const router = express.Router();

const AuthorService = require('../services/author')

router.get('/', function (req, res) {
  console.log("GET '/book'")
  const bookServiceObj = new AuthorService(req, res)
  authorServiceObj.getAll()
})

module.exports = router;