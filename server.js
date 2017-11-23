var express = require("express");
var app = express();
var path = require("path");

var HTTP_PORT = process.env.PORT || 8080;

function onHttpStart() {
  console.log("Express http server listening on: " + HTTP_PORT);
}

app.use('/~sys366_173b05', express.static('.'));

app.get("/", function(req,res){
  res.redirect('/~sys366_173b05');
});

app.listen(HTTP_PORT, onHttpStart);

app.use(function (req, res, next) {
    res.status(404);
    res.send({message: 'Page Not Found'});
});