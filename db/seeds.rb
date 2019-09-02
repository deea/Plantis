puts 'Cleaning database...'
UserPlant.destroy_all
User.destroy_all
Plant.destroy_all
puts 'Creating plants...'

# Plant seeds with img urls

spider = 'https://cdn.nurserylive.com/images/stories/virtuemart/product/resized/nurserylive-chlorophytum-spider-plant-dark-green-1082_600x600.jpg'
aloe = 'https://static.turbosquid.com/Preview/2014/07/11__09_40_14/nmodel_02_53_02.jpgad975979-8feb-4877-9514-b275351e1544Original.jpg'
lily = 'https://assets.bakker.com/ProductPics/560x676/41996-01-BAKI_20190429115731.jpg'
fig = 'https://img.crocdn.co.uk/images/products2/pl/20/00/02/81/pl2000028196.jpg?width=940&height=940'
orchid = 'https://img.crocdn.co.uk/images/products2/pl/20/00/02/81/pl2000028180.jpg?width=940&height=940'

spider_plant = Plant.create!(
  name:         'Spider Plant',
  latin_name: 'Chlorophytum Comosum',
  remote_photo_url:      spider,
  water_freq:  3,
)

aloe_vera = Plant.create!(
  name:         'Aloe Vera',
  latin_name: 'Aloe',
  remote_photo_url:      aloe,
  water_freq:  2,
 )

peace_lily = Plant.create!(
  name:         'Peace Lily',
  latin_name: 'Spathiphyllum Wallisii',
  remote_photo_url:      lily,
  water_freq:  4,
)
weeping_fig = Plant.create!(
    name:         'Weeping Fig',
    latin_name: 'Ficus Benjamina',
    remote_photo_url:      fig,
    water_freq:  9,
)
moth_orchid = Plant.create!(
    name:         'Moth Orchid',
    latin_name: 'Phalaenopsis',
    remote_photo_url:      orchid,
    water_freq:  3,
)

puts 'Creating users...'

# User seeds and images

jen = 'https://simpleweb.co.uk/wp-content/uploads/2019/04/deep-mind-jane-wang-ai.jpg'
henry_pic = 'https://www.techadvisor.co.uk/cmsdata/author/3636812/team_tech_advisor_03_thumb230.jpg'
sophie_pic = 'https://www.iwill.org.uk/wp-content/uploads/2019/04/sophie-400x400.jpg'
chris_pic = 'https://www.birmingham.ac.uk/Images/College-ArtsLaw-only/staff/english/mourant-chris-315-Cropped-230x230.jpg'
sarah_pic = 'https://freedomhouse-files.s3.amazonaws.com/Repucci_Headshot_Photo_230px.jpg'

jenni = User.create!(
  firstname: 'Jenni',
  lastname: 'Green',
  email: 'jenni@gmail.com',
  remote_photo_url: jen,
  password: 'London123'
)

henry = User.create!(
  firstname: 'Henry',
  lastname: 'James',
  email: 'henry@gmail.com',
  remote_photo_url: henry_pic,
  password: 'London123'
)

sofie = User.create!(
  firstname: 'Sophie',
  lastname: 'James',
  email: 'sof@gmail.com',
  remote_photo_url: sophie_pic,
  password: 'London123'
)

chris = User.create!(
  firstname: 'Chris',
  lastname: 'James',
  email: 'chris@gmail.com',
  remote_photo_url: chris_pic,
  password: 'London123'
)

sarah = User.create!(
  firstname: 'Sarah',
  lastname: 'James',
  email: 'sarah@gmail.com',
  remote_photo_url: sarah_pic,
  password: 'London123'
)

puts 'Creating user plants...'

# UserPlant seeds

u_spider_plant = 'https://visitshipshewana.org/wp-content/uploads/2018/11/Spider-Plant-300x300.jpg'
u_aloe_vera = 'https://www.batterseaflowerstation.co.uk/wp-content/uploads/2019/06/AloeVera.jpg'
u_peace_lily = 'https://res.cloudinary.com/bloomnation/c_pad,d_vendor:global:catalog:product:image.png,f_auto,fl_preserve_transparency,q_auto/v1565298283/vendor/364/catalog/product/2/0/20170802084204_file_5982391cb4c4e.jpg'
u_orchid = 'https://res.cloudinary.com/bloomnation/c_pad,d_vendor:global:catalog:product:image.png,f_auto,fl_preserve_transparency,q_auto/v1559420334/vendor/3745/catalog/product/2/0/20181226031646_file_5c239b5ee04c2.jpg'
u_fig = 'https://s3.amazonaws.com/YouGarden/Web/500x500/800114.jpg'

jimmy_plant = UserPlant.create!(
    nickname: 'Jimmy',
    last_watered: DateTime.current - 2,
    plant: spider_plant,
    user: henry
)

benji = UserPlant.create!(
  nickname: 'Benji',
  last_watered: DateTime.current - 3,
  plant: aloe_vera,
  remote_photo_url: u_aloe_vera,
  user: henry
)

dawn = UserPlant.create!(
  nickname: 'Dawn',
  last_watered: DateTime.current - 4,
  plant: peace_lily,
  remote_photo_url: u_peace_lily,
  user: sofie
)

bea = UserPlant.create!(
  nickname: 'Bea',
  last_watered: DateTime.current - 4,
  plant: moth_orchid,
  remote_photo_url: u_orchid,
  user: chris
)

grace = UserPlant.create!(
  nickname: 'Grace',
  last_watered: DateTime.current - 5,
  plant: weeping_fig,
  remote_photo_url: u_fig,
  user: chris
)

dawny = UserPlant.create!(
  nickname: 'Dawny',
  last_watered: DateTime.current - 4,
  plant: peace_lily,
  remote_photo_url: u_peace_lily,
  user: chris
)

benjie = UserPlant.create!(
  nickname: 'Benjie',
  last_watered: DateTime.current - 3,
  plant: aloe_vera,
  remote_photo_url: u_aloe_vera,
  user: chris
)

jimmy_planty = UserPlant.create!(
    nickname: 'Jimmie',
    last_watered: DateTime.current - 2,
    plant: spider_plant,
    remote_photo_url: u_spider_plant,
    user: chris
)

puts 'Finished!'
