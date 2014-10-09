def sum_odd_indexed(array)
  sum = 0
  array.each_with_index { |s, i| sum += s.to_i if i % 2 == 1 }; sum
end
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index


def even_numbers(array)
  array.select { | s | s % 2 == 0}
end
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select



def short_words(array, max_length)
array.reject { | s | s.length > max_length }
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
end



def first_under(array, limit)
  array.find { | item| item < limit }
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
end


def add_bang(array)
array.map { | item| item + "!"}
end


def product(array)
 array.reduce(1, :*)
end


def sorted_pairs(array)
 array.each_slice(2).map {|index| index.sort}

end

