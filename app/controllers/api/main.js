const mainDataMapper = require('../../models/main');

const mainController = {

  async getAll(req, res) {
    const phrases = await mainDataMapper.findAll();
    return res.json(phrases);
  },

  async getOne(req, res) {
    const randomQuote = await mainDataMapper.getRandomQuote();
    return res.json(randomQuote);
  },

};

module.exports = mainController;
