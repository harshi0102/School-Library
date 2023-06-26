require_relative 'person'
require_relative 'student'
require_relative 'teacher'

person = Person.new(16)
puts person.can_use_services? # Output: true

person.name = 'John'
person.age = 20
puts person.name # Output: John
puts person.age # Output: 20

student = Student.new(15, 'Math')
puts student.can_use_services? # Output: true
puts student.play_hooky # Output: ¯\(ツ)/¯

teacher = Teacher.new(35, 'Physics', 'Jane')
puts teacher.can_use_services? # Output: true
