def sum_with_while(min, max)
  count = min
  num = max
  sum = 0

  while count <= num
  sum += count
  count += 1
  end
  sum
end
puts sum_with_while(0,6)



def sum_with_for(min, max)
  num = 0
  for sum in (min..max)
    num += sum
  end
  num
end

puts sum_with_for(0,15)


def sum_recursive(min, max)

end


