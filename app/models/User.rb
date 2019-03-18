class User

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def getuser
    Recipecard.all.select do |card|
      card.user == self
    end
  end

  def recipes
    getuser.map do |recipe|
      recipe.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    Recipecard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def getallergens
    Allegerns.all.select do |allergy|
      allergy.user == self
    end
  end

  def allergns
    getallergens.map do |allergen|
      allergen.ingredients
    end
  end

  def top_three_recipes
    
  end

end
