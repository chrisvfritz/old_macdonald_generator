require_relative '../nursery_rhyme'
require_relative '../nursery_rhyme_objects/farmer'
require_relative '../nursery_rhyme_objects/animal'

class OldMacdonald < NurseryRhyme

  DEFAULT_FARMER_NAME  = 'Macdonald'

  def initialize(args={})
    super(args)
    farmer_name = args[:farmer_name] || DEFAULT_FARMER_NAME
    animals     = Array.new(@number_of_verses) { Animal.types.sample.new }

    @farmer = Farmer.new farmer_name, animals
  end

private

  def verses
    @farmer.animals.map do |animal|
      verse(animal)
    end
  end

  def verse(animal)
    [
      "Old #{@farmer.name} had a farm",
      "E-I-E-I-O",
      "And on his farm he had a #{animal}",
      "E-I-E-I-O",
      "With a #{animal.long_sound} here",
      "And a #{animal.long_sound} there",
      "Here a #{animal.sound}, there a #{animal.sound}",
      "Everywhere a #{animal.long_sound}"
    ]
  end

  def closing
    [
      "Old #{@farmer.name} had a farm",
      "E-I-E-I-O"
    ]
  end

end