const client = require('../config/db');

module.exports = {
  async findAll() {
    const result = await client.query('SELECT * FROM "quote" JOIN "actor" ON "quote"."actor_id" = "actor"."id"');
    return result.rows;
  },
};
