class Cookbook
	attr_accessor :title
	attr_accessor :recipes

	def initialize(title)
		@title = title
		@recipes = []
	end

	def add_recipe(recipe)
		@recipes << recipe
		puts "Added a recipe to the collection: #{recipe.recipe_title}"
	end

	def recipe_titles
		@recipes.each { |recipe|
			puts recipe.recipe_title}

	end

	def recipe_ingredients
		@recipes.each { |recipe| 
			print "These are the ingredients for #{recipe.recipe_title}: " 
			p recipe.ingredients }
	end
	
	def print_cookbook
		puts "Your cookbook contains the following recipes:"
		(1..@recipes.length).each do |x|
			print "#{x}. "
			@recipes[x-1].print_recipe
			puts " "
		end
	end
end

class Recipe
	attr_accessor :recipe_title
	attr_accessor :steps
	attr_accessor :ingredients

	def initialize(recipe_title, ingredients, steps)
		@recipe_title = recipe_title
		@ingredients = ingredients
		@steps = steps
	end

	def print_recipe
		puts "Title: #{@recipe_title}"
		puts "Ingredients: "
		(1..@ingredients.length).each do |x|
			print "#{x}. "
			puts @ingredients[x-1]
		end
		puts "Steps: "
		(1..@steps.length).each do |x|
			print "#{x}. "
			puts @steps[x-1]
		end
	end
end