// app.js
const express = require('express')
const app = express()

const mysql = require('mysql');
const con = mysql.createConnection({
host: "localhost",
port: 8001,
user: "root",
password: "complexpassword",
database: 'Customers'
});

con.connect(function (err) {

if (err) throw err;
  console.log("Connected!");
});

const port = process.env.PORT

app.get('/', (req, res) => res.send('hello world!'))
app.get("/docker", (req, res) => {

  res.send("hello from docker");

});
app.listen(port, () => console.log(`Example app listening on port ${port}!`))
app.get('/nodemon', (req, res) => res.send('hello from nodemon'))