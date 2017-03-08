

def prompt
  puts "Guess a number between 1 and 6."
end

def rand_num_generator
  rand(1...7)
end

def incorrect_guess
  puts "The computer guessed #{rand_num_generator}."
  prompt
end

def correct_guess
    puts "You guessed the correct number!"
    prompt
end

def exit_game
  puts "Goodbye!"

end

def run_guessing_game
  prompt
  rand_num_generator
  while user_guess = gets.chomp
    if user_guess == rand_num_generator.to_s
      correct_guess
    else
      incorrect_guess
    end
    break if user_guess == "exit"
  end
  exit_game
end
