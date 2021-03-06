const client = require('../config/db');

/**
 * @typedef {object} quote
 * @property {number} id - Identifiant unique
 * @property {string} phrase - La citation
 * @property {string} character - Le nom du personnage
 * @property {number} actor_id - Clé étrangère faisant référence à l'id la table actor
 * @property {string} created_at - Date de création de l'enregistrement en BDD
 * @property {string} updated_at - Date de modification de l'enregistrement en BDD
 */

module.exports = {
  /**
     * Récupère la citation par son id
     * @param {Number} quoteId - L'id de la citation souhaité
     * @returns {quote} - La citation correspondant à cet id
     * @returns {error} - Erreur
     */
  async findByPk(quoteId) {
    const result = await client.query({
      text: 'SELECT * FROM "quote" WHERE "id" = $1',
      values: [quoteId],
    });
    if (!result.rows[0]) {
      throw new Error('No record avalible in table "quote" for this id');
    }

    return result.rows[0];
  },

  /**
     * Récupère toute les citations
     * @returns {quote[]} - Toutes les citations de la base de donnée
     */
  async findAll() {
    const result = await client.query('SELECT * FROM "quote"');

    return result.rows;
  },
};
