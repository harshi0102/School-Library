class Corrector
    def correct_name(name)
      if name.length > 10
        name = name.capitalize.strip
      else
        name = name.capitalize
      end
      name[0..10]
    end
  end
  