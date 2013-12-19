require ('./bob')

describe('TeenageerTest', function() {
  var teenager = new Bob();

  it ("test_stating_something", function () {
    var response = teenager.hey ('Tom-ay-to, tom-aaaah-to');
    expect (response).tobe('Whatever.');
  });

  it ("shouting", function() {
    var response = teenager.hey("WATCH OUT!");
    expect (response).toBe('Woah, chill out!');
     });
});
