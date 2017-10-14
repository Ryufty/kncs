/**
 * @author Sangmin Lee
 */
const HTTP_PORT = process.env.PORT || 8080;

const express   = require('express');
const path      = require('path');
const exphbs    = require('express-handlebars');
const bodyParser = require('body-parser');

const app = express();

app.use(express.static('public'));
app.use('/media', express.static('media'));


// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// parse application/json
app.use(bodyParser.json());

// parse some custom thing into a Buffer
//app.use(bodyParser.raw({ type: 'application/vnd.custom-type' }));


// tempalte
app.engine('.hbs', exphbs({
    extname: '.hbs',
    defaultLayout: 'main'
}));
app.set('view engine', '.hbs');

app.get('/', (req, res) => {
    //res.sendFile(path.join(__dirname + '/index.html'));
    res.render('home');
});

app.get('/docs/:doc', (req, res) => {
    
    //@TODO check file existence
    res.render('docs/' + req.params.doc);
});


app.listen(HTTP_PORT, (req, res) => {
    console.info('Server is listening on ', HTTP_PORT);
});
