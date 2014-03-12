 'use strict';

module.exports = function (year) {
  var divisbleBy = function(divisor){
    return year % divisor  === 0
  }
  return divisbleBy(400) || divisbleBy(4) && !(divisbleBy(100));
};
