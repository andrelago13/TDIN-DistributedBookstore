const express = require('express');
const router = express.Router();

router.use('/auth', require('./auth/login'));
router.use('/auth', require('./auth/logout'));
router.use('/auth', require('./auth/register'));

module.exports = router;