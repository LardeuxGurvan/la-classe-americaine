const client = require('../config/db');
/**
 * @typedef {object} RandomQuote - Citation aléatoire
 * @property {number} id - Identifiant unique de l'enregistrement dans la table "quote"
 * @property {string} phrase - La citation
 * @property {string} character - Le nom du personnage
 * @property {string} actor_name - Nom actor de l'acteur de doublage
 */
module.exports = {
  /**
     * Récupère une citation de manière aléatoire
     * @returns {RandomQuote} - La citation
     */
  async getRandomQuote() {
    const result = await client.query(`
        SELECT "quote"."id", "quote"."phrase", "quote"."character", "actor"."name" AS actor_name
        FROM "quote" 
        JOIN "actor" ON "quote"."actor_id" = "actor"."id"
        ORDER BY random()
        LIMIT 1`);

    if (!result.rows[0]) {
      throw new Error('No record avaliable');
    }
    return result.rows[0];
  },
};
