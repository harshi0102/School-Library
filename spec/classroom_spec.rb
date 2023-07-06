require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'Classroom class tests' do
    it "should have label 'English' when initialized with 'English' label" do
      english_classroom = Classroom.new('English')
      expect(english_classroom.label).to eq('English')
    end

    it 'should add a student correctly to the classroom' do
      student = Student.new(44, 'English', name: 'Harshika')

      english_classroom = Classroom.new('English')
      english_classroom.add_students(student)

      expect(english_classroom.students[0].name).to eq('Harshika')
    end
  end
end
