const express = require('express');
const { actorController, quoteController, mainController } = require('../../controllers/api');

const router = express.Router();

router.get('/', mainController.getOne);

router.get('/actor/:id(\\d+)', actorController.getOne);
router.get('/actor', actorController.getAll);

router.get('/quote/:id(\\d+)', quoteController.getOne);
router.get('/quote', quoteController.getAll);

module.exports = router;
