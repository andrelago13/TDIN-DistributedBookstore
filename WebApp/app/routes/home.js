var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');
var session = require('express-session');

/* GET home page. */
router.get('/', function (req, res, next) {
  if(typeof session.username == undefined || session.username == null){
    res.redirect("/");
    return;
  }

  res.render('home', {
    title: config.app_title
  });
});

module.exports = router;
