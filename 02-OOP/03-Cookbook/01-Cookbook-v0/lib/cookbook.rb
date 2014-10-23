require 'csv'
require_relative "recipe"

class Cookbook
  attr_reader :csv_file, :recipes

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = [] # Array of Recipe. [Recipe, Recipe]
    CSV.foreach(csv_file) { |row| @recipes << Recipe.new(row[0], row[1], row[2], row[3]) }
    # row is an Array ["gateau", "mon super gateau"]
    # Lire toutes les recettes existantes
  end

  # def recipes
  #   @recipes
  # end

  def marked_recipes
    @recipes.select { |recipe| recipe.done }
  end

  def fetch_recipe(index)
    @recipes[index]
  end

  def add_recipe(recipe)
    @recipes << recipe

    # Mettre a jour le CSV
    CSV.open(@csv_file, 'a') do |csv|
      csv << [recipe.name, recipe.description, recipe.rating, recipe.done]
    end
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)

    # Mettre a jour le CSV
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each { |recipe| csv << [recipe.name, recipe.description, recipe.rating, recipe.done] }
    end
  end
end


