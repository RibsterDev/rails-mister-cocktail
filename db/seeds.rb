require 'open-uri'

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
reponse = open(url).read
list = JSON.parse(reponse)
list['drinks'].each do |item|
  Ingredient.create(name: item['strIngredient1'])
end
