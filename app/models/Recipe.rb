class Recipe

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipecards
    Recipecard.all.select do |user|
      user.recipe == self
    end
  end

  def users
    recipecards.map do |recipecard|
      recipecard.user
    end
  end

  def self.most_popular
    self.all.max_by do |recipe|
      recipe.users.length
    end
  end

  def recipeingredients
    Recipeingredients.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    recipeingredients.map do |ingredients|
      ingredients.ingredient
    end
  end

  def allergens
    allergen_array = []
    ingredients.each do |ingredient|
      Allergen.all.each do |allergy|
        if ingredient == allergy.ingredients
          allergen_array << allergy.ingredients
        end
      end
    end
    allergen_array
  end

  def add_ingredients(ingredient_array)
    ingredient_array.each do |new_ingredient|
      Recipeingredients.new(self, new_ingredient)
    end
  end
  
end
