require_relative '../person'
require_relative '../book'

describe Person do
  context 'Person class tests' do
    before(:each) do
      @person = Person.new(32, name: 'Dejan', parent_permission: true)
      @book = Book.new('The Sun', 'Lincoln Highway')
    end

    it 'should create a new instance of Person' do
      expect(@person).to be_instance_of(Person)
    end

    it 'should have correct attribute values' do
      expect(@person.id).to be_between(0, 1000).inclusive
      expect(@person.age).to eq(32)
      expect(@person.name).to eq('Dejan')
      expect(@person.parent_permission).to be true
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
      expect(@person.correct_name).to eq('Dejan')
    end
  end

  context 'Rental tests' do
    before(:each) do
      @person = Person.new(32, name: 'Dejan', parent_permission: true)
      @book = Book.new('The Sun', 'Lincoln Highway')
    end

    it 'should add a rental' do
      rental = @person.add_rental('2023-07-06', @book)
      expect(@person.rentals.length).to eq(1)
      expect(@person.rentals).to include(rental)
      expect(rental.person).to eq(@person)
      expect(rental.book).to eq(@book)
    end
  end
end
