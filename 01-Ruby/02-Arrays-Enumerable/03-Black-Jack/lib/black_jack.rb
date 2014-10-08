player_score = 0
bank_score = [16..21]
p_card = [1, 11]



def pick_bank_score
 return bank_score.sample
  # TODO: Use Random to get a new random score
end

def pick_player_card
 return p_card.sample
  # TODO: Use Random to get a new random card
end

