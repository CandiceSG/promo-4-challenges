require_relative 'black_jack'

def state_of_the_game(score, bank_score)
  "Your score is #{score} the bank is #{bank_score}"
end


def end_game_message(player_score, bank_score)
  if player_score == 21
    "Black Jack! You win"
elsif player_score > 21
    "You lose !"
elsif player_score > bank_score && player_score < 21
    "You win"
else
  "You lose!"
  end
end


def play_game
  player_score = 0
  while answer == "yes" || answer == "y"
    player_score += pick_player_card
    puts state_of_game(player_score, bank_score)
  end
  puts end_game_message(player_score, bank_score)
end

