class Student
  attr_accessor :name, :classroom

  def initialize(name)
    @name = name
    @classroom = nil
  end

  def join_classroom(classroom)
    @classroom = classroom
    classroom.students << self
  end
end
