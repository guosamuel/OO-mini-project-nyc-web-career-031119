require 'pry'
class Ingredient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Allergen.all.select do |allergy|
      allergy.ingredients == self
    end
  end

  def users
    ingredients.map do |object|
      object.user
    end
  end

  def self.most_common_allergen
    self.all.max_by do |ingredient|
      # binding.pry
      ingredient.users.length
    end
  end


end
