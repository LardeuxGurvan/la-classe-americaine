const api = {
  baseUrl: 'https://la-classe-americaine-api.herokuapp.com',

  getQuoteFromAPI: async () => {
    try {
      const response = await fetch(`${api.baseUrl}/all`, {
        method: 'GET',

      });

      if (response.status !== 200) {
        const error = await response.json();

        throw error;
      } else {
        // si le status est 200
        return await response.json();
      }
    } catch (err) {
      console.error('getQuote', err);
      return ('Erreur lors de la récupération d\'une citation');
    }
  },
};
