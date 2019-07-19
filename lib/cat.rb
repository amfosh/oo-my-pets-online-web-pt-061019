class Cat
  attr_reader :name, :owner
  attr_accessor :mood
  
  @@all_cats = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all_cats << self
    @owner.cats << self
  end
  
  def self.all
    @@all_cats
  end
end