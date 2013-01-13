// Exports
[ 'degrees'
, 'coordinates'
, 'Home'
, 'ut'
, 'polyglot'
].forEach(function(name) {
  var path = './lib/' + name.toLowerCase();
  exports[name] = require(path);
});

