// Exports
[ 'degrees'
, 'coordinates'
, 'ut'
].forEach(function(name) {
  var path = './lib/' + name.toLowerCase();
  exports[name] = require(path);
});

