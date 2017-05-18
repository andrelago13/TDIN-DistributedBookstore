const express = require('express');
const router = express.Router();
const request = require('request');

var querystring = require('querystring');
var http = require('http');
var config = require('./../../configuration/config');
var session = require('express-session');

router.route('/login').post((req, res) => {
    var username = req.body.username;

    request.post({
        url: config.bookstore_users_login_address,
        form: {
            username: username,
            password: req.body.password
        }
    }, function (err, httpResponse, body) {
        if(httpResponse.statusCode == 200) {
            var body_json = JSON.parse(body);
            session.user_address = body_json.address;
            session.user_name = body_json.name;
            session.username = body_json.username;
            session.user_email = body_json.email;
            session.user_id = body_json.ID;
            
            res.status(200);
            res.redirect("/home");
        } else {
            res.status(400);
            res.redirect("/");
        }
    })
});

module.exports = router;