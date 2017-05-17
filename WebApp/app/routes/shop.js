var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');
var session = require('express-session');

var bookUtils = require('./../utils/book');
var Book = bookUtils.Book;

/* GET shop page. */
router.get('/', function (req, res, next) {
  if (typeof session.username == undefined || session.username == null) {
    res.redirect("/");
    return;
  }

  bookUtils.getBooks(function (books) {
    res.render('shop', {
      title: config.app_title,
      username: session.username,
      books: books
    });
  });
});

module.exports = router;
