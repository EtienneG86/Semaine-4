require 'open-uri'
require 'json'

loop do
puts "Entrez un numero de Code Barre:"
bar_code = gets.chomp

url = "http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

json = open(url).read

data = JSON.parse(json)

nom_produit = data['product']['product_name']
cat_produit = data['product']['categories']
ingr_produit = data['product']['ingredients_text']

puts "Ce produit s'appelle #{nom_produit}"
puts "Il s'agit de #{cat_produit} fait(es) à base de #{ingr_produit}"

# exemple de code barre : 3596710387281

end