require 'nokogiri'
require 'open-uri'
require_relative 'recipe'
require_relative "display"

class Controller
  attr_reader :cookbook

  def initialize(cookbook)
    @cookbook = cookbook
    @display = Display.new
  end

  def web_import
    ingredient = @display.import_recipe_web

    url = "http://www.marmiton.org/recettes/recherche.aspx?s=#{ingredient}&type=all"

    doc = Nokogiri::HTML(open(url), nil, 'utf-8')

    doc.css('.m_contenu_resultat').each do |element|
      name = element.search('.m_titre_resultat > a').inner_text
      rating = element.search('.m_recette_note1').size
      desc = element.search('.m_texte_resultat').inner_text[0..150]

      new_recipe = Recipe.new(name, desc, rating)
      @cookbook.add_recipe(new_recipe)
    end
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
    name = @display.ask_for("name")
    description = @display.ask_for("description")
    rating = @display.ask_for("rating").to_i
    new_recipes = Recipe.new(name, description, rating)
    @cookbook.add_recipe(new_recipes)
  end

  def mark_recipe_as_done
    index = @display.ask_user_for_recipe_done(@cookbook.marked_recipes)
    @cookbook.fetch_recipe(index).mark_as_done
  end

  def print_details_recipe
    @index = @display.get_one_recipe
    if @index
      recipe = @cookbook.recipes[@index.to_i]
    else
      puts "Get a proper id"
    end
    @display.print_one_recipe(@index, recipe)
  end

  def destroy
    # demande l'id de la recette a supprimer
    # dire au cookbook de supprimer la recette de id recupere
    index = @display.destroy_recipe
    @cookbook.remove_recipe(index.to_i)
  end
end