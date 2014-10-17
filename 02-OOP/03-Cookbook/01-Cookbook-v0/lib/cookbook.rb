require 'csv'
require_relative "recipe"

class Cookbook
 attr_reader :csv_file, :recipes

 def initialize(csv_file)
   @csv_file = csv_file
   @recipes = []
   CSV.foreach(csv_file) { |row| @recipes << Recipe.new(row[0], row[1]) }
 end

 # def recipes
 #   @recipes
 # end

 def add_recipe(recipe)
   @recipes << recipe
   csv_options = { col_sep: ',' }

   CSV.open(@csv_file, 'a', csv_options) do |csv|
     csv << [recipe.name, recipe.description]
   end
 end

 def remove_recipe(recipe_id)
   @recipes.delete_at(recipe_id)
 end

 def remove_recipe_from_csv(recipe_id)
    csv_options = { col_sep: ',' }

   new_csv = CSV.open(@csv_file, 'a', csv_options)
   new_csv.map { |csv| csv.delete_at(recipe_id)}
 end

end


filename = "/Users/candicesala/code/CandiceSG/promo-4-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv"


mon_carnet = Cookbook.new(filename)

mon_carnet.recipes.each do |recipe|
 puts recipe.description
end


brandade = Recipe.new("brandade", "poisson emietté")

mon_carnet.add_recipe(brandade)

p mon_carnet.recipes.last