class Animal

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    self.class.to_s.downcase
  end

  def sound
    'roar'
  end

end

class Pig < Animal
  def sound; 'oink'; end
end

class Cow < Animal
  def sound; 'moo'; end
end

class Duck < Animal
  def sound; 'quack'; end
end

class Horse < Animal
  def sound; 'nay'; end
end

class Owl < Animal
  def sound; 'woo'; end
end
