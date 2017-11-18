var express = require("express");
var app = express();
var path = require("path");
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');

var HTTP_PORT = process.env.PORT || 8080;

function onHttpStart() {
  console.log("Express http server listening on: " + HTTP_PORT);
}

app.use(express.static('public'));
app.use('/media', express.static('media'));

app.use(bodyParser.urlencoded({ extended: true }));

app.engine(".hbs", exphbs({
  extname: ".hbs",
  defaultLayout: 'main',
  helpers: {
    equal: function (lvalue, rvalue, options) {
      if (arguments.length < 3)
        throw new Error("Handlebars Helper equal needs 2 parameters");
      if (lvalue != rvalue) {
        return options.inverse(this);
      } else {
        return options.fn(this);
      }
    }
  }
}));
app.set("view engine", ".hbs");

app.get("/", function(req,res){
    res.render("home");
});

app.get("/docs/:subpage", function(req,res){
    res.render(path.join(__dirname + "/views/docs/" + req.params.subpage));
});

app.get("/downloads/:file", function(req,res){
    res.download(path.join(__dirname + "/media/" + req.params.file), req.params.file);
});

/* without "app.use('/media', express.static('media'));" use this
app.get("/media/:file", function(req,res){
    res.sendFile(path.join(__dirname + "/media/" + req.params.file));
});*/

app.listen(HTTP_PORT, onHttpStart);

app.use(function (req, res, next) {
    res.status(404);
    res.send({message: 'Page Not Found'});
});