const express = require('express')
const app = express()

const bodyParser = require('body-parser')
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended : false}))

var cookieParser = require('cookie-parser');
app.use(cookieParser())

app.get('/', function (req, res) {
  res.send('Xin chào, đây là API')
})

// Route
const bookRoute = require('./routes/book')
const authRoute = require('./routes/author')

app.use('/api/book', bookRoute)
app.use('/api/author', authRoute)

const PORT = process.env.PORT || 4200;
app.listen(PORT, function () {
  console.log(`Web app service listening on port ${PORT}!`)
})