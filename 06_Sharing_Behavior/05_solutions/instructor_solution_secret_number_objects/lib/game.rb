require 'person'
require 'secret_number'

class Game
  attr_reader :player, :secret, :guesses_left

  # This is called a constant. It's very bad to "hard code" numbers
  # in your code. What does 3 mean? It's better to give it a name
  # into a constant and use that!
  DEFAULT_GUESSES = 3

  def initialize
    print_welcome_message

    player_name = get_input("Please enter your name:").capitalize
    @player = Person.new(player_name)

    @secret = SecretNumber.new

    @guesses_left = DEFAULT_GUESSES
    @last_guess = -1
  end

  def start
    print_start_message

    until @last_guess == @secret.number || @guesses_left <= 0
      get_guess
    end
  end

  private 

  def get_input(message)
    puts message
    print "=> "
    gets.chomp
  end

  def get_guess
    @guesses_left -= 1
    @last_guess = get_input("What is your guess?").to_i
    check_guess
  end

  def check_guess
    if @last_guess == @secret.number
      print_win_message
    else
      if guesses_left > 0        
        print_bad_guess
      else
        print_lose_message
      end
    end
  end

  def print_welcome_message
    puts "Welcome to Secret Number!\n"
  end

  def print_start_message
    puts
    puts "Welcome #{@player.name}!"
    puts "You get three chances to guess the secret number between 1 and 10."
    puts
  end

  def print_bad_guess
    # Remember, anything is a return value in Ruby!
    direction = if @last_guess > @secret.number
      "lower"
    else
      "higher"
    end

    # A better way to do this (that you haven't learned yet) is using
    # a "ternary" operator, like this:
    #direction = (@last_guess > @secret.number) ? 'lower' : 'higher'

    puts "You guessed #{@last_guess}, guess #{direction}!"
    puts
    puts "Number of guesses left: #{guesses_left}"
  end

  def print_win_message
    puts "┏(-_-)┛┗(-_-﻿ )┓┗(-_-)┛┏(-_-)┓┏(-_-)┛┗(-_-﻿ )┓┗(-_-)┛┏(-_-)┓"
    puts
    puts "Congratulations, #{@player.name}! YOU WIN!!!"
    puts 
    puts "The correct number was #{@secret.number}."
    puts "You won in #{DEFAULT_GUESSES - @guesses_left} turns."
    puts
    puts "┏(-_-)┛┗(-_-﻿ )┓┗(-_-)┛┏(-_-)┓┏(-_-)┛┗(-_-﻿ )┓┗(-_-)┛┏(-_-)┓"
  end

  def print_lose_message
    puts 'BZZZZZZZZTT!! Game Over!'
    puts "The secret number was #{@secret.number}"
    puts "Better luck next time."
  end
end