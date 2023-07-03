require './app'

class UserInterface
  def initialize(app)
    @app = app
  end

  def display_menu
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def get_option
    gets.chomp
  end

  def run
    puts 'Welcome to School Library App!'
    loop do
      puts
      display_menu
      option = get_option

      case option
      when '1'
        @app.all_books
      when '2'
        @app.all_people
      when '3'
        @app.create_person
      when '4'
        @app.create_book
      when '5'
        @app.create_rental
      when '6'
        @app.all_rentals_id
      when '7'
        puts 'Thank you for using this app!'
        puts
        break
      else
        puts 'Sorry, you chose a wrong option'
        puts
      end
    end
  end
end

app = App.new
ui = UserInterface.new(app)
ui.run
