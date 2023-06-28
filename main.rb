require_relative 'classroom'
require_relative 'student'
require_relative 'book'
require_relative 'rental'

# Create a classroom
classroom = Classroom.new('Math Class')

# Create students
student1 = Student.new('John')
student2 = Student.new('Alice')

# Add students to the classroom
classroom.add_student(student1)
classroom.add_student(student2)

# Create books
book1 = Book.new('Ruby Programming', 'John Smith')
book2 = Book.new('Python Crash Course', 'Jane Doe')

# Create rentals
book1.add_rental(student1, '2023-06-01')
book2.add_rental(student2, '2023-06-15')

# Print classroom information
puts "Classroom: #{classroom.label}"
puts 'Students in Classroom:'
classroom.students.each do |student|
  puts "- #{student.name}"
end

# Print rentals for each student
puts "\nRentals:"
classroom.students.each do |student|
  puts "#{student.name} has rented:"
  student.rentals.each do |rental|
    puts "- #{rental.book.title} (Date: #{rental.date})"
  end
end
