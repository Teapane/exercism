var toRna = function(input) {
  var input = input;
  var uracil = input.replace(/T/g,"U");
  return uracil;
};

module.exports = toRna;
