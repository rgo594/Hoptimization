

def welcome
  puts "Welcome to Hoptimization"
end

def username
  puts "Please enter your name"
  gets.chomp
end

def user_valid?(user)
  if user.valid?
    menu
  else
    favorite
  end
end

def menu
  puts" Enter number 1-5
  1.
  2.
  3.
  4.
  5. exit
  "
  menu_input
end


def menu_input
  input = gets.chomp
  case input
  when "1"
    puts "a"
  when "2"
    puts "b"
  when "3"
    puts "c"
  when "4"
    puts "d"
  when "5"
    abort
  else
    puts "invalid entry"
    menu
  end
end


def favorite
  puts "Please enter your favorite beer"
  gets.chomp
end

def find_beer
  beer_input = gets.chomp
  beerdb.select{|beer| beer_input == beer}
end

def find_profile
  puts "Search for a profile"
  profile_input = gets.chomp
end

def suggest_beer

end
