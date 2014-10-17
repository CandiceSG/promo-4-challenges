require_relative 'recipe'

class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
  end

  def list
    list_of_recipes = @cookbook.recipes
  end

  def create
    new_recipes = Recipe.new(name, description)
    @cookbook.create(new_recipes)
  end

  def destroy(recipe)
    @cookbook.destroy(recipe)
  end
end