require_relative '../decorator'
require_relative '../person'

describe Nameable do
  context 'Test for Nameable class' do
    person = Person.new(22, name: 'maximilianus')
    person.correct_name
    capitalized_person = CapitalizeDecorator.new(person)
    capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)

    it 'corrects names using CapitalizeDecorator' do
      expect(capitalized_person.correct_name).to eq('Maximilianus')
    end

    it 'corrects names using TrimmerDecorator' do
      expect(capitalized_trimmed_person.correct_name).to eq('Maximilian')
    end

    it 'does not trim names shorter than 10 characters' do
      short_name = Person.new(18, name: 'John')
      capitalized_short_name = CapitalizeDecorator.new(short_name)
      trimmed_short_name = TrimmerDecorator.new(capitalized_short_name)
      expect(trimmed_short_name.correct_name).to eq('John')
    end
  end
end
