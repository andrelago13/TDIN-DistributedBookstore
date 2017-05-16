var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', {
    title: config.app_title
  });
});

module.exports = router;
