def add_array_lengths(array1,array2)
    
    c = array1.length() + array2.length()
    return c
    
end

def get_first_key(teachers_wallets)
    
    return teachers_wallets.keys().first()
    
end

def array_sum(numbers)
answer = 0
for num in numbers

  answer += num
end
return answer
  end



  def array_check(array,item)
return array.index(item)
#include? works here aswell
  end