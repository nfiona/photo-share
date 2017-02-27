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

kitties = Album.create(title: "The Time is Meow!", img_url: "https://i.ytimg.com/vi/bcENL_Vdoqw/maxresdefault.jpg")


kitty_one = Photo.create(img_url: "http://www.beaconsinn.com/images/s5.favim.com/orig/54/cute-kitty-lovely-Favim.com-520357.jpg", description: "test", album: kitties )
kitty_two = Photo.create(img_url: "https://i.ytimg.com/vi/bcENL_Vdoqw/maxresdefault.jpg", description: "test", album: kitties)


Comment.create(body: "Test Comment", photo: kitty_one)
Comment.create(body: "Test Comment", photo: kitty_two)
