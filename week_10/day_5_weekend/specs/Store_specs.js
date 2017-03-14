var assert = require('assert');
var Store = require('../Store');

describe('Store', function(){

  it('should have name', function(){
    var Store1 = new Store('Vinyl','Edinburgh');
    assert.equal('Vinyl',Store1.name);
  });

  it('should have city', function(){
    var Store1 = new Store('Vinyl','Edinburgh');
    assert.equal('Edinburgh',Store1.city);
  });

  it('should have inventory', function(){
    var Store1 = new Store('Vinyl','Edinburgh');
    assert.deepEqual([],Store1.inventory);
  });

  it('should have name', function(){
    var Store1 = new Store('Vinyl','Edinburgh');
    assert.equal(1000,Store1.balance);
  });

});