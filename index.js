const express = require('express')
const app = express()
const port = process.env.PORT || 3000

app.get('/', (req, res) => {
  res.send('Hello World!');
});

const server = app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});

process.on('SIGINT', shutdown);
process.on('SIGTERM', shutdown);

function shutdown() {
  server.close(err => {
    if (err) {
      console.error(err);
      process.exitCode = 1;
    }
    process.exit();
  })
}

