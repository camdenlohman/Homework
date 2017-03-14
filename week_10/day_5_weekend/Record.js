var Record = function(artist,title,price){

  this.artist = artist,
  this.title = title,
  this.price = price,

  this.getArtist = function(){
    return this.artist;
  };

  this.getTitle = function(){
    return this.title;
  };

  this.getPrice = function(){
    return this.price;
  };
}

module.exports = Record;