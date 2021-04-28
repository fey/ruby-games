# frozen_string_literal: true

require 'prime'
require_relative '../engine'

def play_prime
  description = 'Answer "yes" if given number is prime. Otherwise answer "no".'

  rounds = []
  ROUNDS_COUNT.times do
    number = rand(1..100)
    answer = Prime.prime?(number) ? 'yes' : 'no'
    rounds << [number, answer]
  end

  play_game description, rounds
end
