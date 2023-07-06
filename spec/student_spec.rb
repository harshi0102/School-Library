require_relative '../student'
require_relative '../classroom'

describe Student do
  context 'Student class tests' do
    it 'should have the correct attribute values' do
      student = Student.new(44, 'Rails', name: 'Harshika', parent_permission: true)
      expect(student.age).to eq(44)
      expect(student.classroom).to eq('Rails')
      expect(student.name).to eq('Harshika')
      expect(student.parent_permission).to be true
    end

    it 'should add the student to a classroom' do
      student = Student.new(44, 'Rails', name: 'Harshika', parent_permission: true)
      classroom = Classroom.new('Ruby')
      student.classroom = classroom
      expect(student.classroom).to eq(classroom)
      expect(classroom.students.length).to eq(1)
      expect(classroom.students).to include(student)
    end

    it 'should not add the same student to the classroom multiple times' do
      student = Student.new(44, 'Rails', name: 'Harshika', parent_permission: true)
      classroom = Classroom.new('Ruby')
      student.classroom = classroom
      student.classroom = classroom
      expect(classroom.students.length).to eq(1)
    end

    it 'should play hooky and return the appropriate message' do
      student = Student.new(16, 'Math', name: 'John', parent_permission: true)
      expect(student.play_hooky).to eq('¯(ツ)/¯')
    end
  end
end
