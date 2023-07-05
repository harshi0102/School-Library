require_relative '../decorator'
require_relative '../person'

describe Nameable do
  context 'Test for Nameable class' do
    person = Person.new(22, name: 'maximilianus')
    person.correct_name
    capitalized_person = CapitalizeDecorator.new(person)
    capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

    it 'checks if correcting of names is working' do
      expect(capitalized_person.correct_name).to eql('Maximilianus')
      expect(capitalized_trimmed_person.correct_name).to eql('Maximilian')
    end
  end
end
