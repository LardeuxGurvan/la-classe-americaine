const express = require('express');
const errorController = require('../error/errorController');
const apiRouter = require('./api/api');
const websiteRouter = require('./website/index');

const router = express.Router();

router.use('/api', apiRouter);
router.use('/', websiteRouter);
router.use(errorController.error404);

module.exports = router;
