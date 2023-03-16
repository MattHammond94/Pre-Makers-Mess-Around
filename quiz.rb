#!/usr/bin/env ruby

class Question 
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt 
    @answer = answer
  end
end

q1 = "Whats my favourite colour?\n(a)Blue\n(b)red\n(c)green"
q2 = "Whats my favourite food?\n(a)Roast Potatoes\n(b)Cereal\n(c)Pizza"
q3 = "What car do i drive?\n(a)The Jazzy Belle\n(b)Tesla\n(c)Jeep"
q4 = "What is my favorite animal?\n(a)CongerEel\n(b)Naarwhal\n(c)Capybara"

questions = [
  Question.new(q1, "a"),
  Question.new(q2, "c"),
  Question.new(q3, "a"),
  Question.new(q4, "b")
]

def check(x)
  answer = ""
  score = 0
  for y in x 
    puts y.prompt
    answer = gets.chomp.downcase
    if answer == y.answer
      score += 1
  end
end
  puts "You got #{score.to_s} / #{x.length.to_s}"
  if score == 4
    puts "Congratulations you know me very well"
  elsif score == 2..3
    puts "MEDIOCRE!"
  elsif score < 2
    puts "Disgrace!"
  end
end

check(questions)