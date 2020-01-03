const mysql = require('mysql')
const util = require('util');

var db = mysql.createConnection({
  database: 'sql2317605',
  host: 'sql2.freemysqlhosting.net',
  user: 'sql2317605',
  password: 'uC4!kS3%'
})

module.exports = util.promisify(db.query).bind(db);;