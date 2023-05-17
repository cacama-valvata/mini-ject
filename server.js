var express = require('express');
var app = express();
var exphbs = require('express-handlebars');
const mysql = require ('mysql2');

app.engine('handlebars', exphbs.engine ({defaultLayout: 'base'}));
app.set('view engine', 'handlebars');
app.use(express.static('public'));
const port = 3000;

var db = mysql.createConnection ({
    host: '127.0.0.1',
    user: 'mini',
    password: 'mini',
    database: 'mini',
    port: 3307
});
db.connect();


app.get('*', (req, res) => {
    if (req.query.filter) {
        db.query ('select * from posts where text like "%' + req.query.filter + '%" and private = 0;', (err, results, fields) => {
            context = {
                posts: results
            };
            res.status(200).render('homepage', context);
        });
    }
    else {
        db.query ('select * from posts where private = 0;', (err, results, fields) => {
            context = {
                posts: results
            };
            res.status(200).render('homepage', context);
        });
    }
});

app.listen(port, () => console.log(`App listening to port ${port}`));