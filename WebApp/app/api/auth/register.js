const express = require('express');
const router = express.Router();
const request = require('request');

var querystring = require('querystring');
var http = require('http');
var config = require('./../../configuration/config');
var session = require('express-session');

router.route('/register').post((req, res) => {
    var username = req.body.username;
    var password = req.body.password;
    var email = req.body.email;
    var name = req.body.name;
    var address = req.body.address;

    request.post({
        url: config.bookstore_users_register_address,
        form: {
            username: username,
            password: password,
            name: name,
            email: email,
            address: address
        }
    }, function (err, httpResponse, body) {

        if(httpResponse.statusCode == 200) {
            session.user_address = address;
            session.user_name = name;
            session.username = username;
            session.user_email = email;
            session.user_id = 2;

            res.status(200);
            res.redirect("/home");
        } else {
            res.status(400);
            res.redirect("/");
        }
    })
});

module.exports = router;