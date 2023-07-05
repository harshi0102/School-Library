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

    it 'should have the correct attribute values' do
      student = Student.new(44, 'Rails', name: 'Harshika', parent_permission: true)
      expect(student.age).to eq(44)
      expect(student.classroom).to eq('Rails')
      expect(student.name).to eq('Harshika')
      expect(student.parent_permission).to be true
    end
  end
end
