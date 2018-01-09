// oop.rb
class Animal

  # properties
  attr_accessor :name, :last_ate

  # constructor
  def initialize( name )
    @name = name
    puts "made an Animal named #{name}"
  end

  # instance method
  def eat( food )
    @last_ate = food
    puts "#{@name} noms a #{food.name}"
  end

  # intance method
  def poop()
    puts "#{@name} poops!!!"
  end

end

class Dog < Animal

  # properties
  attr_accessor :breed

  # constructor method
  def initialize()
    super( "unnamed dog" )
  end

end

class Cat < Animal

  # properties
  attr_accessor :color

  # constructor
  def initialize( name, color )
    @color = color
    super( name )
  end

end

# instantiate new instance of Animal class
animal = Animal.new( "Doug Funny" )
animal.poop()

snoopy = Dog.new
snoopy.breed = "Beagle"
snoopy.name = "Snoopy"
puts snoopy.inspect()

mochi = Cat.new( "Mochi", "grey" )
mochi.eat( snoopy )
mochi.poop()