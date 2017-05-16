var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');

/* GET shop page. */
router.get('/', function (req, res, next) {
  res.render('shop', {
    title: config.app_title
  });
});

module.exports = router;
