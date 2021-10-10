var express = require('express');
var app     = express();

var mysql = require('mysql2');
var connection = mysql.createConnection({
  /* host: 'localhost',
  user: 'root',
  password: 'ppcc511',
  database: 'contacts' */
    user:'doadmin',
    password:'M0nuf7DC8mNnRABS',
    host: 'db-contacts-do-user-9898014-0.b.db.ondigitalocean.com',
    port:25060,
    database: 'contacts',
    sslmode: 'REQUIRED'

});


app.get('/', function(req, res){
    res.send('Root Route');
 });
 
// used to serve static files from public directory
app.use(express.static('public'));

// test with curl 'http://localhost:3000/add?firstName=peter'

app.get('/add', function(req, res){
    
    console.log('firstName: ', req.query.firstName);
    console.log('lastName: ', req.query.lastName);
    res.set('Access-Control-Allow-Origin', '*');

    connection.connect(function(err){
        if (err) throw err;
        // if connection is successful
        connection.query(
            "INSERT INTO `contacts` (firstName,lastName,Email, phoneNo,university,major )" 
            + " VALUES(?)", [[req.query.firstName, req.query.lastName, req.query.email,req.query.phoneNo,req.query.university, req.query.major]], 
            function(err,results, fields) {
                if (err) throw err;
                console.log(results);
                console.log('echo sent. firstName: ', req.query.firstName);
                //res.send(`echoing: ${req.query.firstName}`);
            }
    
        );
        connection.query(
            'SELECT * FROM `contacts`',
            function(err, results, fields) {
              console.log(results);       
              res.send(results);
            }
          );
    });
    
    
});

app.get('/read', function(req, res){
    res.set('Access-Control-Allow-Origin', '*');

    connection.query(
      'SELECT * FROM `contacts`',
      function(err, results, fields) {
        console.log(results);       
        res.send(results);
      }
    );
 
 });
 


function timeStamp(){
    var currentdate = new Date();
    var prettyTime = currentdate.getHours() + ":" +
                    currentdate.getMinutes() + ":" +
                    currentdate.getSeconds();
    return prettyTime
}

var port = 3002;
app.listen(port, function(){
    console.log('Listening on port:' + port);
});