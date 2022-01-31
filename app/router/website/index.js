const express = require('express');

const websiteController = require('../../controllers/website/index');
// const { WebsiteError } = require('../../helpers/errorHandler');

const router = express.Router();

router.get('/', websiteController.getAll);

module.exports = router;

// router.use(() => {
//   throw new WebsiteError(404, 'Page introuvable');
// });
