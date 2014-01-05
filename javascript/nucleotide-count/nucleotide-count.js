var DNA = function(dnaString){

  DNA.prototype.count = function(nucleotide){
    if (nucleotide !== 'X' ){
      return dnaString.split(nucleotide).length-1;
    }
    else {
      throw ("Invalid Nucleotide");
    }
  };

  DNA.prototype.nucleotideCounts = function(){
    return { A : DNA.prototype.count('A'),
             T : DNA.prototype.count('T'),
             C : DNA.prototype.count('C'),
             G : DNA.prototype.count('G')
           };
  }();

};


module.exports = DNA;
