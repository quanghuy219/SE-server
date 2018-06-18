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
    // host: '',
    db: 'blog',
    db_port: 3306,
    user: 'root',
    pass: '123456'
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
    host: 'localhost',
    hostname: '35.232.164.78' + port,
    db: 'blog',
    db_port: 3306,  
    user: 'root',
    pass: '123456'
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