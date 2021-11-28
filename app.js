const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const sqlite3 = require('sqlite3');
const db = new sqlite3.Database('data.db');

const {body, validationResult} = require('express-validator');


app.use(bodyParser.urlencoded({ extended: true}));
app.use(express.static(__dirname + "/Oasis"));
app.listen(3000, function(){
    console.log('yay');
});

app.get("/", function(req,rest) {
    rest.sendFile(__dirname + "index.html");
})