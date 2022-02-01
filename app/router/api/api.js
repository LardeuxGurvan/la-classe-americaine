const express = require('express');
const { actorController, quoteController, mainController } = require('../../controllers/api');

const router = express.Router();

/**
* GET /api/
* @summary Get random quote
* @tags RandomQuote
* @return {RandomQuote} 200 - success response - application/json
*/
router.get('/', mainController.getOne);

/**
 * GET /api/actor/{id}
 * @summary Get one actor
 * @tags actor
 * @param {number} id.path.required - actor identifier
 * @return {actor} 200 - success response - application/json
 * @return {error} 404 - actor not found - application/json
 */
router.get('/actor/:id(\\d+)', actorController.getOne);
/**
* GET /api/actor
* @summary Get all actors
* @tags actor
* @return {[actor]} 200 - success response - application/json
*/
router.get('/actor', actorController.getAll);

/**
 * GET /api/quote/{id}
 * @summary Get one quote
 * @tags quote
 * @param {number} id.path.required - quote identifier
 * @return {quote} 200 - success response - application/json
 * @return {error} 404 - quote not found - application/json
 */
router.get('/quote/:id(\\d+)', quoteController.getOne);
/**
* GET /api/quote
* @summary Get all quotes
* @tags quote
* @return {[quote]} 200 - success response - application/json
*/
router.get('/quote', quoteController.getAll);

module.exports = router;
