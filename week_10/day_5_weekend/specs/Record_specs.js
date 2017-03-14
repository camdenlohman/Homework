var assert = require('assert');
var Record = require('../Record');

describe('Record', function(){

  it('should have name', function(){
    var Record1 = new Record('Gorrilaz','Demon Dayz', 17.95);
    assert.equal('Gorrilaz',Record1.artist);
  });

  it('should have title', function(){
    var Record1 = new Record('Gorrilaz','Demon Dayz', 17.95);
    assert.equal('Demon Dayz',Record1.title);
  });

  it('should have price', function(){
    var Record1 = new Record('Gorrilaz','Demon Dayz', 17.95);
    assert.equal(17.95,Record1.price);
  });
});