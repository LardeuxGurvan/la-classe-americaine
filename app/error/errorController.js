const errorController = {
  error404(req, res) {
    res.status(404).json({ error: 'error 404' });
  },
};

module.exports = errorController;
