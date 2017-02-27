# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Photo.destroy_all
Album.destroy_all

children = Album.create(title: "Children's Art Festival")
fash = Album.create(title: "Mint Lola")

children_one = Photo.create(img_url: "https://flic.kr/p/vA1Da4", description: "children tinkering..", album: children)
children_two = Photo.create(img_url: "https://flic.kr/p/vA3hWV", description: "dancers", album: children)
fash_one = Photo.create(img_url: "https://flic.kr/p/zbcnyi", description: "Mint Lola studio, DC", album: fash)
fash_two = Photo.create(img_url: "https://flic.kr/p/N43C4E", description: "Mint Lola at Crafty Bastard, DC", album: fash)

Comment.create(body: "Test Comment", photo: children_one)
Comment.create(body: "Test Comment", photo: fash_one)
