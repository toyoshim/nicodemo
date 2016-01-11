var express = require('express');
var cors = require('cors');
var logfmt = require('logfmt');
var momolog = require('momolog');

var app = express();
app.use(cors());
app.use(logfmt.requestLogger());

var log = momolog();
app.use(log.morgan());

var collection = process.env.DEBUG ? 'log-debug' : 'log';
log.connect(process.env.MONGOLAB_URI, collection).then(function() {
  app.use(express.static(__dirname + '/static'));

  var port = Number(process.env.PORT);
  app.listen(port, function () {
      console.log('Listening on ' + port);
  });
});

