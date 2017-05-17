const express = require('express');
const router = express.Router();
const request = require('request');

var querystring = require('querystring');
var http = require('http');
var config = require('./../../configuration/config');
var session = require('express-session');

router.route('/order').post((req, res) => {
    if(typeof session.username == undefined || session.username == null) {
        res.status(404);
        res.redirect("/");
        return;
    }

    request.post({
        url: config.bookstore_orders_address,
        form: {
            username: session.username,
            book_id: req.body.book_id,
            quantity: req.body.quantity
        }
    }, function (err, httpResponse, body) {
        if (httpResponse.statusCode == 200) {
            res.status(200);
            res.redirect("/home");
        } else {
            res.status(400);
            res.redirect("/");
        }
    })
});

module.exports = router;