require 'csv'

class Cookbook
  attr_reader :csv_file

  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = []
    CSV.foreach(csv_file) { |row| @recipes << row }
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def remove_recipe(recipe_id)
    @recipes -= [recipe_id]
  end
end