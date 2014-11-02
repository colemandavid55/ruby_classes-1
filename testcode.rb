require_relative 'cookbook'

mex_cuisine = Cookbook.new("Mexican Cooking")
burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])

puts mex_cuisine.title # Mexican Cooking
puts burrito.recipe_title # Bean Burrito
p burrito.ingredients # ["tortilla", "bean", "cheese"]
p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipes

burrito.recipe_title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

p burrito.recipe_title # "Veggie Burrito"
p burrito.ingredients # ["tortilla", "tomatoes"]


mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
p mex_cuisine.recipes 

mex_cuisine.recipe_titles
mex_cuisine.recipe_ingredients

burrito.print_recipe
chef_salad = Recipe.new("Chef's Salad", ["lettuce", "tomatoes", "ham", "turkey", "cucumbers", "shredded cheese"], ["mix in bowl", "dress to taste and enjoy"])
mex_cuisine.add_recipe(chef_salad)

guacamole = Recipe.new("Guacamole", ["avacadoes", "salt", "chopped onions"], ["mash avacadoes", "mix in salt", "garnish with onions and serve"])
mex_cuisine.add_recipe(guacamole)
mex_cuisine.recipe_titles
mex_cuisine.recipe_ingredients
mex_cuisine.print_cookbook

mex_cuisine.delete_recipe(chef_salad)

mex_cuisine.recipe_titles
mex_cuisine.recipe_ingredients
mex_cuisine.print_cookbook

mex_cuisine.celebrity_plug