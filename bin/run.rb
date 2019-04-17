require_relative '../config/environment'
require_relative "../lib/cli.rb"

welcome
name = username
uf = User.find_or_create_by(name: name)
fav = favorite
uf.update(favorite_beer: fav)
bf = Beer.find_or_create_by(beer_key: fav)


binding.pry
