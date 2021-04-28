# frozen_string_literal: true

require_relative '../engine'

def play_even
  description = 'Answer "yes" if the number is even, otherwise answer "no".'


  rounds = []
  ROUNDS_COUNT.times do
    number = rand(1..100)
    answer = number.even? ? 'yes' : 'no'
    rounds << [number, answer]
  end

  play_game description, rounds
end
