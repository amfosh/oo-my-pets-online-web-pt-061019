class Dog
  attr_reader :name, :owner
  attr_accessor :mood
  
  @@all_dogs = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all_dogs << self
    @owner.dogs << self
  end
  
  def self.all
    @@all_dogs
  end
end