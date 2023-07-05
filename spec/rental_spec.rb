require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe Rental do
  context 'Rental class tests' do
    it 'should have the correct attributes' do
      date = '2022-04-12'
      book = Book.new('The Sun', 'Author')
      person = Person.new(24, name: 'Robert')

      rental = Rental.new(date, person, book)

      expect(rental).to be_an_instance_of(Rental)
      expect(rental.person.name).to eq('Robert')
      expect(rental.person.age).to eq(24)
      expect(rental.book.title).to eq('The Sun')
      expect(rental.book.author).to eq('Author')
    end

    it 'should return the rental and add it to the person' do
      book = Book.new('Title', 'Author')
      person = Person.new(24, name: 'Mih')

      rental = person.add_rental('2022-03-04', book)

      expect(person.rentals).to eq([rental])
    end
  end
end
