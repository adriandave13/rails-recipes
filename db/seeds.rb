# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create( name: 'Chicago', name: 'Copenhagen')
#   Mayor.create(name: 'Emanuel', city: cities.first)

tacos = Recipe.create(name: 'Tacos', instructions: 'Tacos are a delicious treat')
pizza = Recipe.create(name: 'Pizza', instructions: 'Pizza is a delicious treat')
meatballs = Recipe.create(name: 'Meatballs', instructions: 'Meatballs are a delicious treat')

beef = Ingredient.create(name: 'beef')
shells = Ingredient.create(name: 'shells')
lettuce = Ingredient.create(name: 'lettuce')
cheese = Ingredient.create(name: 'cheese')
sauce = Ingredient.create(name: 'sauce')
dough = Ingredient.create(name: 'dough')

tacos.recipe_ingredients.create(ingredient: beef, quantity: 1, unit: 'pound')
tacos.recipe_ingredients.create(ingredient: shells, quantity: 12, unit: 'shells')
tacos.recipe_ingredients.create(ingredient: lettuce, quantity: 1, unit: 'head')
tacos.recipe_ingredients.create(ingredient: cheese, quantity: 1, unit: 'cup')
tacos.recipe_ingredients.create(ingredient: sauce, quantity: 1, unit: 'jar')

pizza.recipe_ingredients.create(ingredient: sauce, quantity: 1, unit: 'jar')
pizza.recipe_ingredients.create(ingredient: cheese, quantity: 1, unit: 'bag')
pizza.recipe_ingredients.create(ingredient: dough, quantity: 1, unit: 'pound')

meatballs.recipe_ingredients.create(ingredient: beef, quantity: 1, unit: 'pound')
meatballs.recipe_ingredients.create(ingredient: sauce, quantity: 1, unit: 'jar')
