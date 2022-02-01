const expressJSDocSwagger = require('express-jsdoc-swagger');

const options = {
  info: {
    version: '1.0.0',
    title: 'La Classe américaine API',
    description: 'Petite API qui renvoie des citations aléatoires du film "la Classe américaine"',
  },
  baseDir: __dirname,
  filesPattern: ['../router/**/*.js', '../models/*.js'],
  swaggerUIPath: process.env.API_DOCUMENTATION_ROUTE,
  exposeApiDocs: true,
  apiDocsPath: '/api/docs',
};

/**
 *
 * @param {object} app Express application
 * @returns {object} Express JSDoc Swagger middleware that create web documentation
 */
module.exports = (app) => expressJSDocSwagger(app)(options);
