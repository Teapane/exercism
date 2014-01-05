var DNA = function(input){
  this.input = input;

  this.hammingDistance = function(letters){
    var split_input = input.split(''),
        split_letters = letters.split(''),
        length = Math.min(input.length, letters.length),
        countNotMatched = 0;

    for (var i = 0; i < length; i++){
      if (split_letters[i] !== split_input[i]){
        countNotMatched = countNotMatched + 1;
      }
    }
    return countNotMatched;
  };
};

module.exports = DNA;
