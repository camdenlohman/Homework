class People
  
  def initialize(fn,ln,use)
  @fn_list = []
  @ln_list = []
  #First Names
  @fn_list.push("Camden")
  @fn_list.push("Micheal")#
  @fn_list.push("Steve")
  @fn_list.push("Daniel")#
  @fn_list.push("Ricky")
  @fn_list.push("Rachel")#
  @fn_list.push("Sally")
  @fn_list.push("Camden")#
  @fn_list.push("Sam")
  @fn_list.push("Matthew")## 10
  @fn_list.push("Stan")
  @fn_list.push("Ryan")#
  @fn_list.push("Archie")
  @fn_list.push("Emily")#
  @fn_list.push("Darth")
  @fn_list.push("Adam")#
  @fn_list.push("Eve")
  @fn_list.push("Walter")#
  @fn_list.push("Mike")
  @fn_list.push("Carol")## 20
  
  #Last Names
  @ln_list.push("Lohman")
  @ln_list.push("Sanders")#
  @ln_list.push("White")
  @ln_list.push("Vader")#
  @ln_list.push("Rose")
  @ln_list.push("Mythril")#
  @ln_list.push("Black")
  @ln_list.push("Wembly")#
  @ln_list.push("Otter")
  @ln_list.push("Stark")## 10
  @ln_list.push("Conners")
  @ln_list.push("Vance")#
  @ln_list.push("Danvers")
  @ln_list.push("Big Man")#
  @ln_list.push("Ripley")
  @ln_list.push("Mitchel")#
  @ln_list.push("Killjoy")
  @ln_list.push("Smith")#
  @ln_list.push("Slaughter")
  @ln_list.push("Flintstone")## 20









    @use = use
    if @use == true
      @first_name = @fn_list.at(fn)
      @last_name = @ln_list.at(ln)
    else
      @first_name = @fn_list.at(rand(20))
      @last_name = @ln_list.at(rand(20))
    end
    remove_instance_variable(:@fn_list)
    remove_instance_variable(:@ln_list)
    #remove_instance_variable(:@use)
#these are private variables
end

def get_fn
  return @first_name
end

def get_ln
  return @last_name
end

def get_fav_song
return rand(100)
  end
end
