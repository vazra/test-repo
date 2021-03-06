var fs = require('fs')
var express = require('express')
var app = express()

app.get('/env', function (req, res) {
  console.log('q =', req.query.q)
  const q = req.query.q?.toLowerCase()

  var newObj = Object.assign({}, process.env)

  if (q) {
    Object.keys(newObj).forEach(function (key) {
      if (!key.toLowerCase().includes(q)) delete newObj[key]
    })
  }

  res.send(newObj)
})

app.get('/ver', function (req, res) {
  fs.readFile(__dirname + '/ver.txt', 'utf8', function (err, data) {
    if (err) {
      res.send(JSON.stringify(err))
      return
    }
    res.send(data)
  })
})

app.get('/', function (req, res) {
  res.send('Hello World')
})

var server = app.listen(process.env.PORT || 8080, function () {
  var host = server.address().address
  var port = server.address().port

  console.log('Example app listening at http://%s:%s', host, port)
})
