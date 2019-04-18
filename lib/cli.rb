

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
  puts"
  1.
  2.
  3.
  4.
  5. 
  "
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
  x = User.find_by(name: profile_input)
end

def suggest_beer

end
