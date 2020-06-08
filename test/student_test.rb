require './lib/student'
require 'minitest/autorun'
require 'minitest/pride'

class StudentTest < Minitest::Test

  def test_it_exits
    student = Student.new({name: "Morgan", age: 21})
    assert_instance_of Student, student
  end

  def test_it_has_attributes
    student = Student.new({name: "Morgan", age: 21})
    assert_equal "Morgan", student.name
    assert_equal 21, student.age
    assert_equal [], student.scores
  end

  def test_log_scores
    student = Student.new({name: "Morgan", age: 21})
    student.log_scores(89)
    student.log_scores(78)
    assert_equal [89, 78], student.scores
  end

  def test_grade
    student = Student.new({name: "Morgan", age: 21})
    student.log_scores(89)
    student.log_scores(78)
    assert_equal 83.5, student.grade
  end
end
