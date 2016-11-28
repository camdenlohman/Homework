require('minitest/autorun')
require_relative('library')

class LibrarySpec < MiniTest::Test

  def test_show_all

    @library = {books: [{name:"lord_of_the_rings", student_name: "Jeff", date: "01/12/16"},{name:"lord_of_the_flies", student_name: "Camden", date: "01/07/13"},{name:"lord_of_war", student_name: "Steven", date: "27/10/15"}]}
    library1 = Library.new(@library)
    puts library1
    assert_equal(library1, library1.show_all(library1))
  end

  def test_find_book_by_name
    @library = {books: [{name:"lord_of_the_rings", student_name: "Jeff", date: "01/12/16"},{name:"lord_of_the_flies", student_name: "Camden", date: "01/07/13"},{name:"lord_of_war", student_name: "Steven", date: "27/10/15"}]}
    library1 = Library.new(@library)
    book = library1.find_book_by_name(@library, "lord_of_the_flies")
    assert_equal("Camden 01/07/13", book)
  end

  def test_add_book
    @library = {books: [{name:"lord_of_the_rings", student_name: "Jeff", date: "01/12/16"},{name:"lord_of_the_flies", student_name: "Camden", date: "01/07/13"},{name:"lord_of_war", student_name: "Steven", date: "27/10/15"}]}
    library1 = Library.new(@library)
    book = library1.add_book(@library, [name:"lord_of_something", student_name: "", date: ""])


    assert_equal({:books=>[{:name=>"lord_of_the_rings", :student_name=>"Jeff", :date=>"01/12/16"}, {:name=>"lord_of_the_flies", :student_name=>"Camden", :date=>"01/07/13"}, {:name=>"lord_of_war", :student_name=>"Steven", :date=>"27/10/15"}, {:name=>"lord_of_something", :student_name=>"", :date=>""}]}, book)
  end

  def test_taking_book
    @library = {books: [{name:"lord_of_the_rings", student_name: "Jeff", date: "01/12/16"},{name:"lord_of_the_flies", student_name: "Camden", date: "01/07/13"},{name:"lord_of_war", student_name: "Steven", date: "27/10/15"}]}
    library1 = Library.new(@library)
    
    library1.add_book(@library, [name:"lord_of_something", student_name: "", date: ""])

    book = library1.taking_book(@library, "lord_of_something","Camden")

    assert_equal({:name=>"lord_of_something", :student_name=>"Camden", :date=>"12/23/16"},book)


  end
end