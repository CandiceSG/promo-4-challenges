# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Fixnum, and Array classes !

def get_rid_of_surrounding_whitespaces(a_string)
 return a_string.strip
end

def belongs_to?(a_string, a_word)
  return a_string.include?(a_word)
end

def replace(initial_string, old_letter, new_letter)
  return initial_string.gsub(old_letter, new_letter)
  # example: replace("casanova", "a", "o") => "cosonovo"
end

def exactly_divide(an_integer, a_divider)
 return an_integer/a_divider.to_f
  # example: exactly_divide(13, 4) => 3.25
end

def divisible_by_two?(an_integer)
  return an_integer.even?
  # example: divisible_by_two?(6) => true
end

def random_subset(an_array, sample_size)
  return an_array.sample(sample_size)
  # example: random_subset(('a'..'z').to_a, 4) => ["u", "q", "l", "t"]
end

def randomize(an_array)
  # TODO: return a randomized copy of an_array
  # example: randomize([1, 2, 3, 4]) => [2, 1, 4, 3]
end

def ascending_order(an_array)
  # TODO: return a copy of an_array with elements in ascending order
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
end

puts get_rid_of_surrounding_whitespaces("  hey yo  ")
puts belongs_to?("hey jude","jude")
puts replace("casanova","a","o")
puts exactly_divide(13,4)
puts divisible_by_two?(6)
puts random_subset(('a'..'z').to_a, 4)
