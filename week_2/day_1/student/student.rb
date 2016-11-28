class Student

  def initialize(name,cohort,talk,fav)
    @name = name
    @cohort = cohort
    @talk = talk
    @fav = fav
    #instance variable / private variable
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def able_to_talk
    if @talk == true
      return "I can talk!"
    else
      return "........"
    end
  end

  def fav_language
    message = "I love " + @fav
    return message
  end

  def set_name(change)
  @name = change
    return @name
  end

  def set_cohort(change)
    @cohort = change
    return @cohort
  end
end