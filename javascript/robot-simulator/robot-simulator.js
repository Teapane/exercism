(function(){
  function Robot() {
    var validDirections = ["east", "west", "south", "north"]

    this.bearing = ""
    this.orient = function(direction)   {
      this.bearing = direction

    };
  } 
  
  module.exports = Robot;
})();
