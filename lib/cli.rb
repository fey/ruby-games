# frozen_string_literal: true

require 'inquirer'

def run_ruby_games
  puts 'Welcome to the Ruby Games!'
  name = Ask.input 'May I have your name?'
  puts "Hello, #{name}!"
end
