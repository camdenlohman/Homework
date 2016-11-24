require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( 'my_functions' )

class My_Functions < MiniTest::Test

  # Write a function that takes has two parameters, array1 and array2
  # It should return the sum of the array lengths
  def test_add_length_of_arrays
    result = add_array_lengths( [ "Rick", "Matthew" ], [ "Simon", "Craig", "Beth" ] )
    assert_equal( 5, result )
  end

  #Write a function that has one parameter teachers_wallets
  #It should return the first key from the hash
  def test_get_first_key
    wallets = {
      'Beth' => 12,
      'Craig'  => 10,
      'Simon'  => 1356,
      'Matthew' => 1
    }
    result = get_first_key( wallets )
    assert_equal( 'Beth', result )
  end


  # # Write a function that has a parameter named numbers
  # # It should return the sum value of an array passed as the argument
  def test_sum_array
    array = [7,5,35,9,654,2,89]
    result = array_sum(array)

    assert_equal( 801, result )
  end

  # # Write a function that has two parameters, array e.g. [ 'Hufflepuff', 'Slytherin', 'Gryffindor', 'Ravenclaw' ] and item
  # # It should return true if the item exists in the array otherwise it should return false
def test_extra_array
array = ['Hufflepuff','Slytherin','Gryffindor','Ravenclaw']
item = 'Hufflepuff'

result = array_check(array,item)
if result == nil
  puts "didn't work"
else
  puts "did work"
  assert_equal(array[0], array[result])
end
end
end
