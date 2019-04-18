
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
    find_beer
  when "2"
    find_profile
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

def find_beer()
  puts "Please enter beer name"
  input = gets.chomp
  puts brewery_db.search.beers(q: input)
  binding.pry
end

def find_profile
  puts "Search for a profile"
  profile_input = gets.chomp
  profile = User.find_by(name: profile_input)
    puts "Name: #{profile.name.colorize(:red)} | Favorite Beer: #{find_beer_key(profile.favorite_beer).colorize(:red)} | Description: #{find_beer_description(profile.favorite_beer).colorize(:yellow)}"
end

def find_beer_key(key)
  beer_name = Beer.find_by(beer_key: key)
  beer_name.name
end

def find_beer_description(key)
  beer_desc = Beer.find_by(beer_key: key)
  beer_desc.description
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
