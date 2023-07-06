require_relative '../book'
require_relative '../rental'
require_relative '../person'

describe Book do
  context 'Book class tests' do
    before(:each) do
      @title = 'The Sun'
      @author = 'Lincoln Highway'
      @book = Book.new(@title, @author)
    end

    it 'should be an instance of Book' do
      expect(@book).to be_an_instance_of(Book)
    end

    it 'should have the correct title' do
      expect(@book.title).to eq(@title)
    end

    it 'should have the correct author' do
      expect(@book.author).to eq(@author)
    end

    it 'should add a rental' do
      person = Student.new(22, name: 'John Doe')
      rental = @book.add_rental('2023-07-06', person)
      expect(rental).to be_a(Rental)
      expect(@book.rentals.length).to eq(1)
      expect(@book.rentals).to include(rental)
      expect(person.rentals.length).to eq(1)
      expect(person.rentals).to include(rental)
    end
  end
end
