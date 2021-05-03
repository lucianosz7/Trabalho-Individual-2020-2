const
  express = require('express'),
  serveStatic = require('serve-static'),
  history = require('connect-history-api-fallback'),
  port = process.env.PORT || 5000

const app = express()

console.log('API 2', process.env.VUE_APP_API_URL);
app.use(history())
app.use(serveStatic(__dirname + '/dist/spa'))
app.listen(port)

