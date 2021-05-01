'user strict';

var mysql = require('mysql');

//local mysql db connection
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'mysql',
  database: 'final_proj'
});

connection.connect((err) => {
  if (err) {
    throw (err);
  }
  console.log('connected to db');
});

module.exports = connection;