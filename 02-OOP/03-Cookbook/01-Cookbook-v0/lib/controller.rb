require_relative 'recipe'
require_relative "display"

class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def list
    # Aller chercher toutes les recipes
    # Envoyer toutes les recipes a la vue pour l'affichage
    @display.display_recipe(@cookbook.recipes)
  end

  def create
    # Il me faut un nom, une description
    # Creer la recipe
    # Donner la recipe au Cookbook pour la stocker
    name = @display.create_recipe
    description = @display.recipe_description
    new_recipes = Recipe.new(name, description)
    @cookbook.add_recipe(new_recipes)
  end

  def destroy
    # demande l'id de la recette a supprimer
    # dire au cookbook de supprimer la recette de id recupere
    index = @display.destroy_recipe
    @cookbook.remove_recipe(index.to_i)
  end
end