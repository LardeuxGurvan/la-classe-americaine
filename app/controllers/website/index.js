const serviceDataMapper = require('../../models/service');

const serviceController = {

  async getAll(req, res) {
    const quotes = await serviceDataMapper.findOne();
    return res.json(quotes);
  },

  about(req, res) {
    return res.render('about');
  },

  async home(req, res) {
    const quote = await serviceDataMapper.findOne();
    return res.render('index', { quote });
  },

};

module.exports = serviceController;
