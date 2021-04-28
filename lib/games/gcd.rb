# frozen_string_literal: true

require_relative '../engine'

def play_gcd
  description = 'Find the greatest common divisor of given numbers.'

  rounds = []
  ROUNDS_COUNT.times do
    first_number = rand(5..50)
    second_number = rand(5..50)
    question = "#{first_number} #{second_number}"
    answer = first_number.gcd(second_number).to_s
    rounds << [question, answer]
  end

  play_game description, rounds
end
