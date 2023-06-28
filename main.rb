require_relative 'classroom'
require_relative 'student'
require_relative 'book'
require_relative 'rental'
require_relative 'person'

# Create a classroom
classroom = Classroom.new('A101')

# Create students and add them to the classroom
student1 = Student.new('John Doe')
student1.join_classroom(classroom)

student2 = Student.new('Jane Smith')
student2.join_classroom(classroom)

# Access the students in the classroom
puts "Students in #{classroom.label}:"
classroom.students.each do |student|
  puts student.name
end

# Create a book
book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')

# Create a person
person = Person.new('Alice Smith')

# Create a rental linking the person and book
rental = Rental.new('2023-06-28', book, person)
person.rentals << rental
book.rentals << rental
