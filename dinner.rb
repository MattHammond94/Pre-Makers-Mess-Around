#!/usr/bin/env ruby

takeaways = ["KFC", "McDonalds", "Wagamama", "Kokoro", "Forno's", "Domino's Pizza", "Taco Bell", "Coconut Tree", "Bellaggio's", "Burger King", "7Bone", "Mighty Weiners", "Dilly Dilly's", "Susan's" ]
meals = ["Chicken Supreme", "Stir Fry", "Nachos", "Sausage and Mash", "Pie and Mash", "Goulash", "Veg Curry", "Spicy Bean Burgers", "Fry Up", "Scouse", "Meatballs", "Fajitas" ]

ta_pick = Random.new
t = ta_pick.rand(0..takeaways.size)

me_pick = Random.new
m = me_pick.rand(0..meals.size)

puts "Who dares enter the realm of easy food choice selection?\n(enter your name)"
name = gets.chomp.capitalize
puts "Well #{name}, what's the plan for tonight? Takeout or Cookoff?"
selection = gets.chomp.capitalize
case 
  when selection == "Takeout"
  print "Tonight #{name} you are having...#{takeaways.fetch(t)}!"
  when selection == "Cookoff"
  print "Tonight #{name} you are having...#{meals.fetch(m)}!"
  when selection == "Snack"
  print "Help yourself to some Haribos then!"
  else 
  print "I guess we're not eating tonight then."
end