class Farmer

  attr_reader :name, :farm

  def initialize(name, farm)
    @name = name
    @farm = farm
  end

  def song
    lyrics = ''

    @farm.animals.each do |animal|
      lyrics += [
        "Old #{@name} had a farm",
        "E-I-E-I-O",
        "And on his farm he had a #{animal} named #{animal.name}",
        "E-I-E-I-O",
        "With a #{ Array.new(2, animal.sound).join(' ') } here",
        "And a #{ Array.new(2, animal.sound).join(' ') } there",
        "Here a #{animal.sound}, there a #{animal.sound}",
        "Everywhere a #{ Array.new(2, animal.sound).join(' ') }\n"
      ].join("\n")
    end

    lyrics += [
      "Old #{@name} had a farm",
      "E-I-E-I-O"
    ].join("\n")
  end

end
