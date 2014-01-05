var toRna = require('./rna-transcription');

describe("toRna()", function() {
  it("transcribes cytidine unchanged", function() {
    expect(toRna('C')).toEqual('C');
  });

  it("transcribes guanosine unchanged", function() {
    expect(toRna('G')).toEqual('G');
  });

  it("transcribes adenosine unchanged", function() {
    expect(toRna('A')).toEqual('A');
  });

  it("transcribes thymidine to uracil", function() {
    expect(toRna('T')).toEqual('U');
  });

  it("transcribes all occurrences of thymidine to uracil", function() {
    expect(toRna('ACGTGGTCTTAA')).toEqual('ACGUGGUCUUAA');
  });
});
