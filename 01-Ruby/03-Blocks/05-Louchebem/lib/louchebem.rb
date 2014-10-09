# Encoding: utf-8

def louchebemize(word)
  suffixe = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  suffixe_choisi = suffixe.sample

  if word.size <= 1
    puts word
    return word
  elsif word.downcase.start_with?('a','e','i','o','u','é', 'è','ê','y')
    word = "l" + word
  elsif !word.downcase.start_with?('a','e','i','o','u','é', 'è','ê','y')
    word += word[0]
    word[0] = ""
    return louchebemize(word)
  end
  puts word
  puts word + suffixe_choisi
  word + suffixe_choisi
end


louchebemize("fou")