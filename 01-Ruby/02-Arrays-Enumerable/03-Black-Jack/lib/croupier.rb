require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  "The bank score is #{bank_score} and The player score is #{player_score}" # TODO: return (not print!) a message containing the player's score and bank's score
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score == 21
    return "black jack"
  elsif player_score > 21
    return "The Bank wins"
  elsif player_score > bank_score
    return "The player wins"
  else
    return "The bank wins"
 end

end


def play_game
  score_player = pick_player_card
  score_bank = pick_bank_score
  answer = "y"
  while (answer == "y" || answer == "yes") && (score_player <= 21)
  puts state_of_the_game(score_player, score_bank)
  puts "Do you want a card? ( y or yes, otherwise no card)"
  answer = gets.chomp
  if (answer == "y" || answer == "yes")
    score_player = score_player + pick_player_card
  end
end
  puts state_of_the_game(score_player, score_bank)
  puts end_game_message(score_player, score_bank)
end

