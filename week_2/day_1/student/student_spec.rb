
require('minitest/autorun')
require_relative('student')

class StudentSpec < MiniTest::Test

  def test_get_name

    student = Student.new("Camden",9,true,"Ruby")
    assert_equal("Camden", student.get_name)

  end

  def test_get_cohort

    student = Student.new("Camden",9,true,"Ruby")
    assert_equal(9, student.get_cohort)

  end

  def test_able_to_talk

    student = Student.new("Camden",9,true,"Ruby")
    assert_equal("I can talk!", student.able_to_talk)

  end

  def test_fav_language

    student = Student.new("Camden",9,true,"Ruby")
    assert_equal("I love Ruby", student.fav_language)

  end

  def test_set_name

    student = Student.new("Camden",9,true,"Ruby")
    assert_equal("Camden again", student.set_name("Camden again"))

  end

  def test_set_cohort

    student = Student.new("Camden",9,true,"Ruby")
    assert_equal(27, student.set_cohort(27))

  end

end