const serviceDataMapper = require('../../models/service');

const serviceController = {

  async getAll(req, res) {
    const quotes = await serviceDataMapper.findAll();
    return res.json(quotes);
  },

  async home(req, res) {
    const quote = await serviceDataMapper.findOne();
    return res.render('index', { quote });
  },

};

module.exports = serviceController;
