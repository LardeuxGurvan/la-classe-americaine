const serviceDataMapper = require('../../models/service');

const serviceController = {

  async getAll(req, res) {
    const phrases = await serviceDataMapper.findAll();
    return res.json(phrases);
  },

  async getOne(req, res) {
    const phrase = await serviceDataMapper.randomOne();
    return res.json(phrase);
  },

};

module.exports = serviceController;
