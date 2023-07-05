require_relative '../book'

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
  end
end
