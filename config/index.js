var path = require('path')
  , rootPath = path.normalize(__dirname + '/..')
  , env = process.env.NODE_ENV || 'development'
  , port = 8080

  
var config = {
  local: {
    env: 'local',
    root: rootPath,
    secret: 'test',
    app: {
      name: 'blog'
    },
    port: port,
    dialect: 'mysql',
    hostname: 'localhost:'+port,
    db: 'testdb',
    db_port: 3306,
    user: 'root',
    pass: ''
  },
  development: {
    env: 'development',
    root: rootPath,
    secret: 'test',
    app: {
      name: 'blog'
    },
    port: port,
    dialect: 'mysql',
    host: 'be9d0lk1d-mysql.services.clever-cloud.com',
    hostname: 'app-4a5dbc4f-d024-436d-a4c4-74ab131c9fa3.cleverapps.io/',
    db: 'be9d0lk1d',
    db_port: 3306,  
    user: 'ukmovi134a8o35rk',
    pass: '0Fj28hHzXwkp07r7Tls'
  },

  production: {
    root: rootPath,
    secret: 'test',
    app: {
      name: 'rest-api-template'
    },
    port: port,
    dialect: 'mysql',
    db: 'testdb',
    db_port: 8889,
    user: 'root',
    pass: 'root'
  }
};
module.exports = config[env];