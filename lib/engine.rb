# frozen_string_literal: true

require 'inquirer'

ROUNDS_COUNT = 3

def play_game(description, rounds)
  puts 'Welcome to the Ruby Games!'
  name = Ask.input 'May I have your name?'

  puts description

  rounds.each do |round|
    question, correct_answer = round
    user_answer = Ask.input "Question: #{question}"

    if user_answer != correct_answer
      puts "'#{user_answer}' is wrong answer ;(. Correct answer was '#{correct_answer}'."
      puts "Let's try again, Bill!"
      return
    end

    puts 'Correct!'
  end

  puts "Congratulations, #{name}!"
end
