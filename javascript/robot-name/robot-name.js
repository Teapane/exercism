var Robot = function(){
  this.name = function() {
    return "ab123" + Math.random()
  };

  this.reset = function(){
    this.name = this.name + "BK!!PAIRINGISFUN!"
  };
};

module.exports = Robot;
