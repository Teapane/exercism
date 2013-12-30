function Hamming() {

  function shortestStrand(strand1, strand2){
    if (strand1.length > strand2.length){
      return strand2;
    } else {
      return strand1
    };
  };

  function strandCounting(shortest, splitStrand1, splitStrand2) {
    var count = 0;

    for (var i = 0; i < shortest.length; i++){
     if (splitStrand1[i] != splitStrand2[i]) {
        count+=1;   
      };  
    };
    return count;
  };


  this.compute = function (strand1, strand2) {
    var splitStrand1 = strand1.split('');
    var splitStrand2 = strand2.split('');
    var shortest = shortestStrand(splitStrand1, splitStrand2)
    var result = strandCounting(shortest, splitStrand1, splitStrand2);
      return result;
  };
};


module.exports = Hamming;
