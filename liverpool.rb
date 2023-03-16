#!/usr/bin/env ruby

squad = ["Alisson", "Kelleher", "Adrian", "Trent", "Robbo", "Virg", "Konate", "Matip", "Gomez", "Phillips", "Williams", "Ramsay", "Kostas", "Thiago", "Bajcetic", "Naby-Lad", "Fab", "Elliott", "Jones", "Carvalho", "Henderson", "Melo", "Firmino", "Gakpo", "Luis Diaz", "Nunez", "Jota", "Salah"]

squad_2 = [["Alisson", "Kelleher", "Adrian"], ["Trent", "Robbo", "Virg", "Konate", "Matip", "Gomez", "Phillips", "Williams" "Ramsay", "Kostas"], ["Thiago", "Bajcetic", "Naby-Lad", "Fab", "Elliott", "Jones", "Carvalho", "Henderson", "Melo"]]

results_2023 = ["2-2", "1-1", "1-2", "9-0", "2-1", "0-0", "3-3", "2-3", "1-0", "1-0", "0-1", "1-2", "2-1", "3-1", "3-1", "2-1", "1-3", "0-3", "0-0", "0-3", "2-0", "2-0", "0-0", "2-0", "7-0", "0-1"]

class Coach
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    puts "My name is #{first_name} #{last_name}"    
  end
end


class Player < Coach

  BASE_SALARY = 100_000
  
  attr_accessor :first_name, :last_name, :number, :position, :rating, :length_of_service

  def initialize(first_name, last_name, number, position, rating, length_of_service)
    @first_name = first_name
    @last_name = last_name
    @number = number
    @position = position
    @rating = rating
    @length_of_service = length_of_service
  end

  def show_position
    puts "#{last_name} plays at #{@position}"
  end

  def new_numb(numb)
    @number = numb
    puts "You have changed #{last_name}'s number to #{@number}"
  end

  def salary
    puts (BASE_SALARY * length_of_service) * rating
  end
end

class Captain < Player 
  def shout
    puts "WHY I MAN GET TE YE POSITIONS MAN!"
  end 
   armband = true
end

class BossMan < Coach 
  
  def select_team(arr)
    puts "The selected 11 for todays game is: "
    selected = arr.shuffle.drop(arr.count - 11)
    print selected.join(", ").sub("Salah", "The Egyptian King")
    if selected.include?("Alisson") || ("Adrian") || ("Kelleher")
      puts "\nLets go boiz!"
    else 
      puts "\nBack to the drawing board boss, we're missing a bloody keeper!?"
    end
  end 
  
  def motivation(x)
    puts "Get a move on #{x}"
  end

  def shout
    puts "Are we mentality monsters or not!?"
  end

  gengenpressed_to_perfection = true
end


class Form

  def self.points(arr)
    s = arr.map { |x| x.split("-") }
    points = 0 
    s.map { |x| 
      points += 3 if x[0] > x[1]
      points += 0 if x[0] < x[1]
      points += 1 if x[0] == x[1]
    }
   print points 
 end
end

# pep = Coach.new("Pep", "Lijnders")
# pep.to_s
# trent = Player.new("Trent", "Alexander-Arnold", 66, "RB", 8, 15)
# virg = Player.new("Virgil", "Van-Dijk", 4, "CB", 9, 5)
# salah = Player.new("Mohamed", "Salah", 11, "RW", 10, 6)
# virg.to_s
# virg.new_numb(9)
# virg.show_position
# trent.show_position
# trent.to_s
# salah.salary
hendo = Captain.new("Jordan", "Henderson", 14, "CM", 7, 12)
hendo.shout
hendo.new_numb(28)
hendo.show_position
hendo.salary
jurgen = BossMan.new("Jurgen", "Klopp")
jurgen.to_s
jurgen.motivation("Robbo")
jurgen.select_team(squad)
jurgen.shout
hendo.shout
puts Form.points(results_2023)