require "open-uri"

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
article = Article.new(title: 'NES', body: "A great console")
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


User.destroy_all

puts 'Creating User...'
d = User.create(name: 'Diogo', email: 'dg@gmail.com', password: '123123')
h = User.create(name: 'Heitor', email: 'ht@gmail.com', password: '123123')
g = User.create(name: 'Gobatto', email: 'rg@gmail.com', password: '123123')
s = User.create(name: 'Sorriso', email: 'sr@gmail.com', password: '123123')

puts 'Finish...'
