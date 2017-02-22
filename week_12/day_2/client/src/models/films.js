var Film = require('./film');
var Review = require('./review');

var Films = function() {}

Films.prototype = {
  makeRequest: function(url, callback){
    var request = new XMLHttpRequest();
    request.open('GET',url);
    request.onload = callback;
    request.send();
  },

  makePostRequest: function(url,payload, callback){
    var request = XMLHttpRequest();
    request.open('POST', url);
    request.setRequestHeader('Content-type','application/json');
    request.onload = callback;
    request.send(payload);
  },

  all: function(callback) {
    this.makeRequest('http://localhost:3000/api/films', function() {
      if (this.status !== 200) return;
      var jsonString = this.responseText;
      var result = JSON.parse(jsonString);

      callback(result);
    });
  },

  add: function(film,callback) {
    var filmToAdd = JSON.stringify(film);
    this.makePostRequest('http://localhost:3000/api/films', filmToAdd, callback);
    
  }
}

module.exports = Films;
