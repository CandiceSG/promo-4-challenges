

def array_to_hash(array)
 array = ["a", "b", "c"]
 hash = {}
 array.each_with_index { |item, key| hash[block_given? ? yield(key) : key] = item }
 hash
end

