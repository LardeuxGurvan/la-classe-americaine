const express = require('express');

const websiteController = require('../../controllers/website/index');

const router = express.Router();

router.get('/', websiteController.home);
router.get('/all', websiteController.getAll);
router.get('/about', websiteController.about);

module.exports = router;
