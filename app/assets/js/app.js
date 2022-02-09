const app = {
  init: () => {
    const buttonElement = document.getElementById('reroll-button');
    buttonElement.addEventListener('click', () => {
      app.reroll();
    });
  },
  reroll: async () => {
    // fetch api
    // eslint-disable-next-line no-undef
    const quote = await api.getQuoteFromAPI();

    // get elements from DOM
    const containerElement = document.querySelector('.main__label-container');
    const quoteElement = containerElement.querySelector('.main__quote-label');
    const characterElement = containerElement.querySelector('.main__character-label');
    const actorElement = containerElement.querySelector('.main__actor-name');

    // replace data
    containerElement.classList.toggle('aos-animate');
    setTimeout(() => {
      containerElement.classList.toggle('aos-animate');
      quoteElement.textContent = `"${quote.phrase}"`;
      characterElement.textContent = quote.character;
      actorElement.textContent = quote.actor;
    }, 400);
  },
};

// init app
document.addEventListener('DOMContentLoaded', app.init);
