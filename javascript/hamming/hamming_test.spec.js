var Hamming = require ('./hamming');

describe("Hamming", function(){
  var hamming = new Hamming();

  it("no difference between empty strands", function() {
    var result = hamming.compute('', '');
    expect(result).toBe(0);
  });

  it ('no difference between identical strands', function() {
    var result = hamming.compute('GGACTGA', 'GGACTGA');
    expect(result).toBe(0)
  });

  it ('hamming distance in small strands', function (){
    var result = hamming.compute ('ACT', 'GGA');
    expect(result).toBe(3);
  });

  it ('hamming distance if off by one strand', function(){
    var result = hamming.compute('GGACGGATTCTG', "AGGACGGATTCT");
      expect(result).toBe(9);
   });

  it ('small hamming distance in the middle somewhere', function(){
    var result = hamming.compute('GGACG', "GGTCG");
      expect(result).toBe(1);
   });

  it ('larger distance', function(){
    var result = hamming.compute('ACCAGGG', "ACTATGG");
      expect(result).toBe(2);
   });

  it ('ignores extra length on other strand when longer', function(){
    var result = hamming.compute('AAACTAGGGG', "AGGCTAGCGGTAGGAC");
      expect(result).toBe(3);
   });

  it ('ignores extra length on original strand when longer', function(){
    var result = hamming.compute('GACTACGGACAGGGTAGGGAAT', "GACATCGCACACC");
      expect(result).toBe(5);
   });









});
