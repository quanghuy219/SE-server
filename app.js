var config = require('./config')
    , express = require('express')
    , db = require('./app/lib/db')
    , utils = require('./app/lib/utils')(config, db)
    , app = express()
    , fs = require('fs')

function init() {
    db.checkConnection(successHandle, errorHandle);
}

function startServer() {
    console.log('Connection has been established successfully.');
    var model_list = utils.loadModels();
    const options = {
        key: fs.readFileSync('/etc/letsencrypt/live/quanghuyvps.dynu.net/privkey.pem'),
        cert: fs.readFileSync('/etc/letsencrypt/live/quanghuyvps.dynu.net/fullchain.pem')
      };
    var https = require('https').createServer(options,app)
        require('./config/express')(app, config)
        require('./config/routes')(app, utils, model_list)
        https.listen(config.port, function () {
            console.log("API running at http://" + config.hostname)
        })
}

function successHandle(err) {
    startServer();
}

function errorHandle(err) {
    console.log('Unable to connect to the database:', err);
}

init();
module.exports = app;