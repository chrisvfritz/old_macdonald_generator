class Animal

  def to_s
    self.class.to_s.downcase
  end

  def sound
    'roar'
  end

  def long_sound
    Array.new(2, sound).join ' '
  end

  def self.types
    ObjectSpace.each_object(Class).select { |klass| klass < self }
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

class Rabbit < Animal
  def sound; 'hop'; end
end
