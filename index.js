const express = require('express');
const app = express();

const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('Hello World!')
});

app.get('/ping', (req, res) => {
  res.send('Hello World! ping')
});

app.listen(port, () => {
  console.log(`Example app listening at ${port}`)
});
