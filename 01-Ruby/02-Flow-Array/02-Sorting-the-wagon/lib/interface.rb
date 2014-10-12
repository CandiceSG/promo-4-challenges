require_relative "wagon_sort"

student_array = []


puts "Student name ?"
answer = gets.chomp
    student_array << answer

while answer != ""
  puts "Type another student name (or press enter to finish)"
  answer = gets.chomp
     if answer != "" then student_array << answer
     end
end

student_array = wagon_sort(student_array)

first = student_array[0..-2]
last = student_array.last

puts "Congratulations ! Your wagon has #{student_array.size} students :"
puts "- #{first.join(", ")} and #{last}"
