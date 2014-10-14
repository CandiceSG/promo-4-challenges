require 'open-uri'
require 'json'

def generate_grid(grid_size)
 array = []
 grid_size.times{ array << [*('A'..'Z')].sample }
 return array # TODO: generate random grid of letters
end


def run_game(attempt, grid, start_time, end_time)
  time_taken = end_time - start_time
end


#l'ordinateur donne un random word_grid de 9 lettres qui peuvent être répétées
# l'internaute entre le mot qu'il pense le plus long en anglais avec uniquement les lettres données
#l'ordinateur
# 1. lui affiche le mot
# 2. lui donne le temps que ça a pris
# 3. lui donne un score
# 4. donne un message d'encouragement

# pour que le code réussisse il faut :
# 1. qu'il y ait une traduction
# 2. que les lettres fassent bien parties en nombre suffisant de la grille.
# Si le mot n'est pas valide le score = 0 et l'ordinateur affiche un message d'échec
# Le score dépend de deux paramètres :
# - le temps mis pour répondre,
# - la longueur du mot trouvé.
# inventer les pénalty rules en fonction du temps, de la longueur du mot...
