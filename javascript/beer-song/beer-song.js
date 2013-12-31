(function(){
  'use strict';

  function bottles(number)){
  var str = "";

  if (number === 0) {
      str = "no more bottles";
    } else if (number === 1) {
      str = "1 bottle";
    } else {
      str = number + " bottles";
    }

    return str;
  };
}
