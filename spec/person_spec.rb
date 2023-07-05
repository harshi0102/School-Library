require_relative '../person'

describe Person do
  context 'Person class tests' do
    it 'should create a new instance of Person' do
      person = Person.new(32, name: 'Dejan', parent_permission: true)
      expect(person).to be_instance_of(Person)
    end

    it 'should have correct attribute values' do
      person = Person.new(32, name: 'Dejan')
      expect(person.id).to be_between(0, 1000).inclusive
      expect(person.age).to eq(32)
      expect(person.name).to eq('Dejan')
      expect(person.parent_permission).to be true
    end

    it 'should have parent_permission set to false' do
      person = Person.new(32, name: 'Dejan', parent_permission: false)
      expect(person.parent_permission).to be false
    end

    it 'should return false for can_use_services? method' do
      person = Person.new(12, name: 'Ardit', parent_permission: false)
      expect(person.can_use_services?).to be false
    end

    it 'should return true for can_use_services? method' do
      person = Person.new(8, name: 'Arijon', parent_permission: true)
      expect(person.can_use_services?).to be true
    end

    it 'should return correct name with correct_name method' do
      person = Person.new(8, name: 'Arijon', parent_permission: true)
      expect(person.correct_name).to eq('Arijon')
    end
  end
end
