const client = require('../config/db');

/**
 * @typedef {object} actor
 * @property {number} id - Identifiant unique Pk de la table
 * @property {string} name - le nom de l'acteur de doublage
 * @property {string} created_at - Date de la création de l'enregistrement en BDD
 * @property {string} updated_at - Date de la modification de l'enregistrement en BDD
 */

module.exports = {
  /**
     * Récupère par sont id
     * @param {number} actorId - L'id de l'acteur souhaité
     * @returns {actor} - L'acteur souhaité
     */
  async findByPk(actorId) {
    const result = await client.query({
      text: 'SELECT * FROM "actor" WHERE "id" = $1',
      values: [actorId],
    });
    if (!result.rows[0]) {
      throw new Error('No record avalible in table "actor" for this id');
    }

    return result.rows[0];
  },

  /**
     * Récupère tout sans filtre ni ordre
     * @returns {actor[]} - Tous les acteurs dans la base de donnée
     */
  async findAll() {
    const result = await client.query('SELECT * FROM "actor"');

    return result.rows;
  },
};
