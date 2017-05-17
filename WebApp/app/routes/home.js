var express = require('express');
var router = express.Router();
var config = require('./../configuration/config');
var session = require('express-session');

var orderUtils = require('./../utils/order');
var Order = orderUtils.Order;
var OrderState = orderUtils.OrderState;

/* GET home page. */
router.get('/', function (req, res, next) {
  if (typeof session.username == undefined || session.username == null) {
    res.redirect("/");
    return;
  }

  orderUtils.getOrders(function (orders, completed_orders) {
    res.render('home', {
      title: config.app_title,
      orders: orders,
      completed_orders: completed_orders
    });
  });
});

module.exports = router;
