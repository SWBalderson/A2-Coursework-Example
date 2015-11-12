//load the required modules
var express = require('express');
var app = express();



var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'u6example',
  password : 'wells1234',
  database : 'u6example'
});

connection.connect();

connection.query('SELECT * FROM users', function(err, rows, fields) {
  if (err) throw err;

  console.log(rows[0]);
});

connection.end();


//set which port our web server will run on
var port = process.env.PORT || 8080;

//define static html directory
app.use(express.static(__dirname + '/public'));

//start the server
app.listen(port);
console.log('Coursework server running on port ' + port);
