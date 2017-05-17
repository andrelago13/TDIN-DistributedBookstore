var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');
var session = require('express-session');

/* GET shop page. */
router.get('/', function (req, res, next) {
  if (typeof session.username == undefined || session.username == null) {
    res.redirect("/");
    return;
  }

  res.render('shop', {
    title: config.app_title,
    username: session.username
  });
});

module.exports = router;
