require_relative 'recipe'
require_relative "display"

class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    @display.display_recipe(@cookbook.recipes)
  end

  def create
    name = @display.create_recipe
    description = @display.recipe_description
    new_recipes = Recipe.new(name, description)
    @cookbook.add_recipe(new_recipes)
  end

  def destroy
    index = @display.destroy_recipe
    @cookbook.remove_recipe(index.to_i)
  end
end