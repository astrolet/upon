// Exports
[ 'degrees'
, 'coordinates'
, 'Home'
, 'ut'
].forEach(function(name) {
  var path = './lib/' + name.toLowerCase();
  exports[name] = require(path);
});

