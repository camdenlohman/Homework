var Store = function(name,city){

  this.name = name,
  this.city = city,
  this.inventory = [],
  this.balance = 1000.00

// look at prototype
// VVVV these are made for each object

  this.getName = function(){
    return this.name;
  };

  this.getCity = function(){
    return this.city;
  };

  this.getInventory = function(){
    return this.inventory;
  };

  this.getBalance = function(){
    return this.balance;
  };

  this.list_inventory = function(){
    var result_array = [];
    for (item in this.inventory){
      result_array.push(item);
    }
    return result_array;
  };

  this.sold_record = function(input){
    // V2 .. indexOf
    for (var i = 0; i < this.inventory.size(); i++){
      if(input == this.inventory[i]){
        this.balance += this.inventory[i].price;
        this.inventory.splice(i,1);
        i = this.inventory.size();
      }
    }
  };

  this.finance_report = function(){
    var result_array = [];
    result_array.push(this.balance);
    var amount = 0;
    for (item in this.inventory){
      amount += item.price;
    }
    result_array.push(amount);
    return result_array;
  };
}

module.exports = Store;