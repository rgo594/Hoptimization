
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
  1. Search Beer
  2. Search Profile
  3. Search Type
  4. My Profile
  5. exit
  "
  menu_input
end


def menu_input
  input = gets.chomp
  case input
  when "1"

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
  puts "Search for a profile"
  profile_input = gets.chomp
  Beer.all.select do |beer|
    beer.name == profile_input
  end
end

def find_profile
  puts "Search for a profile"
  profile_input = gets.chomp
  # User.all.select do |user|
  #   user.name == profile_input
  #   # binding.pry
  User.find_by(name: profile_input)
  end



def suggest_beer

end

def beer_input
    input = gets.chomp.to_i
    case input
    when 1
        return input - 1
    when 2
        return input - 1
    when 3
        return input - 1
    when 4
        return input - 1
    when 5
        return input - 1
    when "exit"
        abort
    else
        puts "invalid entry, Please select another number"
        beer_input
    end
end
