var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');
var session = require('express-session');

/* GET login page */
router.get('/', function (req, res, next) {
  if(typeof session.username != undefined && session.username != null) {
    res.status(200);
    res.redirect('/home');
    return;
  }

  res.render('index', {
    title: config.app_title
  });
});

module.exports = router;
