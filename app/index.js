const express = require('express');
const cors = require('cors');
const path = require('path');
const router = require('./router');

const app = express();
require('./helpers/apiDocs')(app);

app.set('view engine', 'ejs');

app.set('views', `${process.cwd()}/app/assets/views`);
// app.use(express.static(path.join(__dirname, './assets')));
app.use(express.static(`${process.cwd()}/app/assets/`));

app.use(express.json());

app.use(cors(process.env.CORS_DOMAINS ?? '*'));

app.use(router);

module.exports = app;
