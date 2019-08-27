# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating plant_types"
PlantType.create(name: "snake plant", water_freq: 21 )
PlantType.create(name: "devil's ivy", water_freq: 14 )
PlantType.create(name: "chinese money plant", water_freq: 7 )
puts "done"
