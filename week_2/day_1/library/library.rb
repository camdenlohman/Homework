class Library

  def initialize(array)
    @array = array
    #instance variable / private variable
  end

  def show_all(array)
    return array
  end

  def find_book_by_name(array,search)
    answer = ""
    for book in array[:books]
      if book[:name] == search
        answer += book[:student_name].to_s
        answer += " "
        answer += book[:date].to_s
        return answer
      end
    end
    return nil
  end

  def add_book(array,change)
    array[:books] += change
     return array
  end

  def taking_book(array,search,student)
    for book in array[:books]
      if book[:name] == search
        book[:student_name] = student
        book[:date] = "12/23/16"
        return book
  end
end
end


end