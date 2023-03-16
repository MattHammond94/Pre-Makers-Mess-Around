#!/usr/bin/env ruby

secret_word = "cabbage"
guess = ""
guess_count = 0
guess_limit = 10
out_of_guesses = false

puts "See if you can guess my secret word..."

while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit
    puts "Enter your guess: "
    guess = gets.chomp
    guess_count += 1 
  else 
    out_of_guesses = true 
  end
end

if out_of_guesses == true 
  puts "You are out of guesses..."
else
  puts "You found the secret word!"
end