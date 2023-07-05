require_relative '../teacher'
require_relative '../person'

describe Teacher do
  context 'Teacher class tests' do
    before(:each) do
      age = 43
      name = 'Smith'
      specialization = 'Web'
      @teacher = Teacher.new(age, specialization, name: name)
    end

    it 'should be an instance of Teacher class' do
      expect(@teacher.instance_of?(Teacher)).to eq(true)
    end

    it 'should have the correct age' do
      expect(@teacher.age).to eq(43)
    end

    it 'should have the correct name' do
      expect(@teacher.name).to eq('Smith')
    end

    it 'should have the correct specialization' do
      expect(@teacher.specialization).to eq('Web')
    end

    it 'should be able to use services' do
      expect(@teacher.can_use_services?).to eq(true)
    end
  end
end
