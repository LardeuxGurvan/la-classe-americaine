const express = require('express');

const websiteController = require('../../controllers/website/index');

const router = express.Router();

router.get('/', websiteController.home);

module.exports = router;
