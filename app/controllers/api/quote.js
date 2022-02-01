const quoteDatamapper = require('../../models/quote');

const quoteController = {

  async getAll(req, res) {
    const quotes = await quoteDatamapper.findAll();
    return res.json(quotes);
  },

  // eslint-disable-next-line consistent-return
  async getOne(req, res) {
    try {
      const id = Number(req.params.id);
      const actor = await quoteDatamapper.findByPk(id);
      return res.json(actor);
    } catch (error) {
      console.error(error);
      res.status(404).json({ error: error.message });
    }
  },

};

module.exports = quoteController;
