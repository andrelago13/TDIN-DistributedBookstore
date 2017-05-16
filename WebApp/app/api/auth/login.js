const express = require('express');
const router = express.Router();

router.route('/login').get((req, res) => {
    res.status(200);
    res.redirect('/home/');
});

module.exports = router;