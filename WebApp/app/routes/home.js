var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');
var session = require('express-session');

var order_file = require('./../utils/order');
var Order = order_file.Order;
var OrderState = order_file.OrderState;

/* GET home page. */
router.get('/', function (req, res, next) {
  if(typeof session.username == undefined || session.username == null){
    res.redirect("/");
    return;
  }

  var orders = [new Order(0, 'a', 20, 20, OrderState.SHOULD_DISPATCH)];

  res.render('home', {
    title: config.app_title,
    orders: orders,
    completed_orders: orders
  });
});

module.exports = router;
