# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
User.destroy_all
Trekking.destroy_all

puts 'Creating User...'
d = User.create(name: 'Diogo', email: 'dg@gmail.com', password: '123123')
h = User.create(name: 'Heitor', email: 'ht@gmail.com', password: '123123')
g = User.create(name: 'Gobatto', email: 'rg@gmail.com', password: '123123')
User.create(name: 'Sorriso', email: 'sr@gmail.com', password: '123123')

puts 'Creating Trekking...'

Trekking.create(name: 'Backpack', price: 25.50, category: 'Backpack', user: d, url_image: 'https://ae01.alicdn.com/kf/H5b07cc8ac63d456b86eb0e35182993486/Mochila-de-60l-para-trilha-bolsa-prova-d-gua-para-acampamento-viagem-ao-ar-livre-mochila.jpg_Q90.jpg_.webp')
Trekking.create(name: 'Shoes', price: 40.90, category: 'Shoes', user: h, url_image: 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQG5Kgu-z32r41Kd6W5TvO5t8QNDHw92tMwo-wjaEHE4aj9Hvtw54h9pxZbkRBzEDwOIJiyXD-Lvuksl0fenKBBV707wdZn7zuMmSdpx2TYcUhCoe8JHVlidw&usqp=CAE')
Trekking.create(name: 'Coat', price: 30.90, category: 'Coat', user: g, url_image: 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSpq-XG7uDD-qAGBCFMzmO20pH3gjnEPLX5TRpAmf3B7Bw96H7Jud_luzpazf1wXZZ9r-vlf1pZOzELpxz6bPfQpW9-DBxjvz7xHoMNrUtrS_5J1fhOxshcBg&usqp=CAE')

puts 'Finish...'
