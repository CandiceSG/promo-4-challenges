require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.P
puts "What do you want to tell to your coach ?"
your_message=gets.chomp
puts coach_answer(your_message)
  puts "So what ?"

while (your_message != "I am going to work right now!".upcase) || (your_message != "I am going to work right now!")
  your_message = gets.chomp
  puts coach_answer_enhanced(your_message)
end
