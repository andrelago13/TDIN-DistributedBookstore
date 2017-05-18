const express = require('express');
const router = express.Router();
const request = require('request');

var session = require('express-session');

router.route('/logout').get((req, res) => {
    session.user_address = undefined;
    session.user_name = undefined;
    session.username = undefined;
    session.user_email = undefined;
    session.user_id = undefined;

    res.status(200);
    res.redirect("/");
});

module.exports = router;