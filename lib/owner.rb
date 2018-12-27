class Owner
  attr_accessor :pets, :name 
  attr_reader :species
  @@all_owners = []
  
  def initialize(name)
    @name =  name
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    @species = 'human'
    @@all_owners << self
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.reset_all 
    @@all_owners.clear
  end
  
  def self.all 
    @@all_owners  
  end
  def self.count
    @@all_owners.length
  end
end