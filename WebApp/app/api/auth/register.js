const express = require('express');
const router = express.Router();
const request = require('request');

var querystring = require('querystring');
var http = require('http');
var config = require('./../../configuration/config');
var session = require('express-session');

router.route('/register').post((req, res) => {
    var username = req.body.username;

    request.post({
        url: config.bookstore_users_register_address,
        form: {
            username: username,
            password: req.body.password
        }
    }, function (err, httpResponse, body) {
        if(httpResponse.statusCode == 200) {
            session.username = username;
            res.status(200);
            res.redirect("/home");
        } else {
            res.status(400);
            res.redirect("/");
        }
    })
});

module.exports = router;