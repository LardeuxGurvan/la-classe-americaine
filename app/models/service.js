const data = require('../../data/data.json');

module.exports = {
  async findAll() {
    const result = data;
    return result;
  },
  async findOne() {
    const result = data[Math.floor(Math.random() * data.length)];
    return result;
  },
};
