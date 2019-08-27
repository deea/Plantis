# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Plant.destroy_all
puts 'Creating plants...'

spider_plant = 'https://cdn.nurserylive.com/images/stories/virtuemart/product/resized/nurserylive-chlorophytum-spider-plant-dark-green-1082_600x600.jpg'
aloe_vera = 'https://static.turbosquid.com/Preview/2014/07/11__09_40_14/nmodel_02_53_02.jpgad975979-8feb-4877-9514-b275351e1544Original.jpg'
peace_lily = 'https://assets.bakker.com/ProductPics/560x676/41996-01-BAKI_20190429115731.jpg'
weeping_fig = 'https://img.crocdn.co.uk/images/products2/pl/20/00/02/81/pl2000028196.jpg?width=940&height=940'
moth_orchid = 'https://img.crocdn.co.uk/images/products2/pl/20/00/02/81/pl2000028180.jpg?width=940&height=940'

plants_attributes = [
 {
   name:         'Spider Plant',
   latin_name: 'Chlorophytum Comosum',
   remote_photo_url:      spider_plant,
   water_freq:  '3',
 },
 {
    name:         'Aloe Vera',
    latin_name: 'Aloe',
    remote_photo_url:      aloe_vera,
    water_freq:  '2',
 },
 {
    name:         'Peace Lily',
    latin_name: 'Spathiphyllum Wallisii',
    remote_photo_url:      peace_lily,
    water_freq:  '4',
  },
  {
     name:         'Weeping Fig',
     latin_name: 'Ficus Benjamina',
     remote_photo_url:      weeping_fig,
     water_freq:  '5',
  },
  {
     name:         'Moth Orchid',
     latin_name: 'Phalaenopsis',
     remote_photo_url:      moth_orchid,
     water_freq:  '6',
  },
]
Plant.create!(plants_attributes)
puts 'Finished!'