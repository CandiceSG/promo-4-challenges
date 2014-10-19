require 'csv'
require_relative "recipe"

class Cookbook
  attr_reader :csv_file, :recipes

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = [] # Array of Recipe. [Recipe, Recipe]
    CSV.foreach(csv_file) { |row| @recipes << Recipe.new(row[0], row[1]) }
    # row is an Array ["gateau", "mon super gateau"]
    # Lire toutes les recettes existantes
  end

  # def recipes
  #   @recipes
  # end

  def add_recipe(recipe)
    @recipes << recipe

    # Mettre a jour le CSV
    csv_options = { col_sep: ',' }

    CSV.open(@csv_file, 'a', csv_options) do |csv|
      csv << [recipe.name, recipe.description]
    end
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)

    # Mettre a jour le CSV
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each { |recipe| csv << [recipe.name, recipe.description] }
    end
  end
end


"/Users/candicesala/code/CandiceSG/promo-4-challenges/02-OOP/03-Cookbook/01-Cookbook-v0/lib/recipes.csv"
