const express = require('express');
const router = express.Router();
const request = require('request');

var session = require('express-session');

router.route('/logout').get((req, res) => {
    session.username = undefined;
    res.status(200);
    res.redirect("/");
});

module.exports = router;