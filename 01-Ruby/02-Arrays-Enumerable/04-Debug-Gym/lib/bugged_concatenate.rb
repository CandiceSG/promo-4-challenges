def bugged_concatenate(i, f, b, c, d)
  array = []
  array.reduce("") { |a, e| a + e }.upcase
end

def build_1984_title
  bugged_concatenate(1, "9", 84, " ", "George Orwell").to_s
end