require_relative '../config/environment.rb'
require 'pry'
#Recipes
pizza = Recipe.new("pizza")
pasta = Recipe.new("pasta")
salad = Recipe.new("salad")

#Users
roni = User.new("Roni")
sam = User.new("Sam")
chris = User.new("Chris")

#Recipecards
pizzacard = Recipecard.new(roni, pizza, "2019-03-12", 10)
pastacard = Recipecard.new(sam, pasta, "2018-02-10", 7)
saladcard = Recipecard.new(chris, salad, "2013-04-23", 5)
pizzacard1 = Recipecard.new(roni, pasta, "2013-05-04", 9)
pastacard1 = Recipecard.new(sam, pizza, "2012-09-09", 8)
pizzacard2 = Recipecard.new(chris, pizza, "2015-10-10", 9)

#Ingredients
tomato = Ingredient.new("tomato")
cheese = Ingredient.new("cheese")
flour = Ingredient.new("flour")
oil = Ingredient.new("oil")
salt = Ingredient.new("salt")
pepper = Ingredient.new("pepper")
lettuce = Ingredient.new("lettuce")
dressing = Ingredient.new("dressing")

#Allergens
allergen_tomato = Allergen.new(roni, tomato)
allergen_cheese = Allergen.new(sam, cheese)
allergen_flour = Allergen.new(chris, flour)
allergen_salt = Allergen.new(sam, salt)

#recipeingredients
pizza_recipe = Recipeingredients.new(pizza, tomato)
pasta_recipe = Recipeingredients.new(pasta, cheese)
salad_recipe = Recipeingredients.new(salad, dressing)
pizza_recipe1 = Recipeingredients.new(pizza, cheese)
pasta_recipe1 = Recipeingredients.new(pasta, flour)
salad_recipe1 = Recipeingredients.new(salad, salt)

binding.pry
