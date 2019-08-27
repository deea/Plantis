# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "cleaning database"
Plant.destroy_all
puts "starting seed"
Plant.create!(name:'Spider Plant', latin_name: 'Chlorophytum Comosum', photo: 'https://res.cloudinary.com/patch-gardens/image/upload/c_fill,f_auto,h_840,q_auto:good,w_840/v1539776219/products/chlorophytum-comosum-bonnie-1f3b6c.jpg', water_freq: '3')
puts "seed finished"
