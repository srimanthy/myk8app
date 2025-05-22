// server.js
const http = require('http');
http
  .createServer((req, res) => res.end('Hello from myk8app!'))
  .listen(3000, () => console.log('Listening on 3000'));

