# frozen_string_literal: true

require_relative '../engine'

def generate_round
  operators = ['+', '*', '-']
  first_number = rand(1..25)
  second_number = rand(1..25)
  operator = operators.sample

  question = "#{first_number} #{operator} #{second_number}"
  correct_answer = first_number.send(operator, second_number).to_s

  [question, correct_answer]
end

def play_calc
  description = 'What is the result of the expression?'
  rounds = []
  ROUNDS_COUNT.times do
    round = generate_round

    rounds << round
  end

  play_game description, rounds
end
