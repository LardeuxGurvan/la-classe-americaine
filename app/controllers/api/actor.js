const actorDatamapper = require('../../models/actor');

const actorController = {

  async getAll(req, res) {
    const actors = await actorDatamapper.findAll();
    return res.json(actors);
  },

  // eslint-disable-next-line consistent-return
  async getOne(req, res) {
    try {
      const id = Number(req.params.id);
      const actor = await actorDatamapper.findByPk(id);
      return res.json(actor);
    } catch (error) {
      console.error(error);
      res.status(404).json({ error: error.message });
    }
  },

};

module.exports = actorController;
