var express = require('express');
var path = require("path");

const port = process.env.PORT || 3000;
const jsonServer = require('json-server/lib/server');

var app = express();

app.use('/api', jsonServer.router('api/db.json'));

app.use(express.static(__dirname + '/dist'));

app.get('/*', function (req, res) {
    res.sendFile(path.join(__dirname + '/dist/index.html'));
});

app.listen(port, function () {
  console.log('Enjoeat Sprint 1 disponível em http://localhost:3000');
});