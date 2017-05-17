var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');
var session = require('express-session');
var Book = require('./../utils/book').Book;

/* GET shop page. */
router.get('/', function (req, res, next) {
  if (typeof session.username == undefined || session.username == null) {
    res.redirect("/");
    return;
  }

  var books = [new Book(1,2,3,4,5)];

  res.render('shop', {
    title: config.app_title,
    username: session.username,
    books: books
  });
});

module.exports = router;
