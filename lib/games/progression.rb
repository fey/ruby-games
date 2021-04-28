# frozen_string_literal: true

require_relative '../engine'

def make_progression
  first_number = rand(5..50)
  progression_step = rand(5..15)

  Array.new(10, first_number).each_with_index.map do |number, index|
    number + index * progression_step
  end
end

def play_progression
  description = 'What number is missing in the progression?'

  rounds = []
  ROUNDS_COUNT.times do
    progression = make_progression
    hidden_index = rand(0..9)
    answer = progression[hidden_index].to_s
    progression[hidden_index] = '..'
    question = progression.join ' '
    rounds << [question, answer]
  end

  play_game description, rounds
end
