# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Creating Ingredients'
ingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
ingredients["drinks"].each do |ele|
    Ingredient.create(name:ele["strIngredient1"])
end
puts "Done making Ingredients"
