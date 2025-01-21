

var express = require('express');
var app = express();

// Respond with "changed not" for requests that hit the root "/"
app.get('/', function (req, res) {
  res.send('changed  girlfriend');
});

// Listen to port 3000 by default
app.listen(process.env.PORT || 3000, function () {
  console.log('Server is running on port 3000');
});

module.exports = app;
