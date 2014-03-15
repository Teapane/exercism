var PhoneNumber = function(input) {
  this.input = input;

  this.number = function(){
    var clean_number = input.replace(/\D/g, "");

    if (clean_number.length == 11 && clean_number.charAt(0) == '1'){
      return clean_number.slice(1);
    }
    else if (clean_number.length == 10) {
      return clean_number;
      }
    else {
      return "0000000000"
    };
  };

    this.areaCode = function(){
      var code = input.substring(0,3);
      return code
    };

    this.toString = function(){
      return "(" +this.areaCode(input) +")" + " " + input.substring(3,6) + "-" +input.substring(6, 10)
    };
};
module.exports = PhoneNumber;
