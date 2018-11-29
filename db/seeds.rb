require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Seeding database...'
ingredients['drinks'].each { |x| Ingredient.create(name: x['strIngredient1']) }

puts 'Database seeded!'
