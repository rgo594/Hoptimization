require_relative '../config/environment'
require_relative "../lib/cli.rb"

brewery_db = BreweryDB::Client.new do |config|
    config.api_key = 'add8db24d44eb0934dfb63d624582efc'
end 
welcome
name = username
uf = User.find_or_create_by(name: name)
fav = favorite
beer_search = brewery_db.search.beers(q: "#{fav}")
beer_search.first(5).each_with_index {|x,y| puts "#{y + 1}. #{x["name"]}"}

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
        
# binding.pry
        u_input = beer_input
        fav_id = beer_search.to_a[u_input]["id"]
        fav_name = beer_search.to_a[u_input]["name"]
        fav_description = beer_search.to_a[u_input]["style"]["description"]

uf.update(favorite_beer: fav_id)
bf = Beer.find_or_create_by(beer_key: fav_id, description: fav_description, name: fav_name)


binding.pry
