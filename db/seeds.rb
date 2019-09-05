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
corn = 'https://img.crocdn.co.uk/images/products2/pl/20/00/03/20/pl2000032072.jpg?width=940&height=940'
parlor = 'https://cdn.shopify.com/s/files/1/0108/5782/products/Parlor_Palm-_Neanthe_bella.jpg?v=1548523448'
bamboo = 'https://www.joyusgarden.com/wp-content/uploads/2017/01/Lucky-Bamboo-care-tips-you-should-know.jpg'
alu = 'https://mypassiflora.com/wp-content/uploads/2019/02/20190207_093811.jpg'
dumb = 'https://img.crocdn.co.uk/images/products2/pl/20/00/03/35/pl2000033597.jpg?width=940&height=940'
panda = 'https://images-na.ssl-images-amazon.com/images/I/71qrJSpYXLL._SX425_.jpg'
swiss = 'https://img.crocdn.co.uk/images/products2/pl/20/00/03/27/pl2000032789.jpg?width=940&height=940'

spider_plant = Plant.create!(
  name:         'Spider Plant',
  latin_name: 'Chlorophytum Comosum',
  remote_photo_url:      spider,
  water_freq:  3,
  temperature: 'Minimum temperature should be no lower than 45°F (7°C). Ideal is approximately 60° - 75°F (15° - 24°C).',
  light: 'Nicely lit room without direct sunlight.',
  watering: 'They like plenty of water, between spring and summer. In the winter they should need a lot less.',
  soil: 'Any decent potting mix.',
  re_potting: 'Re-pot in spring, if needed (outgrown its pot). Look for roots growing out of the drainage holes of the current pot.',
  level_of_care: 'Minimal care: This plant can survive with minimal care/attention and can manage low temperatures. However, they will start to look very unattractive and create mess (leaves falling and browning) without enough water and light or too much of either.'
)

aloe_vera = Plant.create!(
  name:         'Aloe Vera',
  latin_name: 'Aloe',
  remote_photo_url:      aloe,
  water_freq:  2,
  temperature: 'Temperatures averaging 70°F/21°C - 80°F/26°C are very good and not much below 50°F/10°C.',
  light: 'The A.Vera thrives on bright light conditions, but not direct sunlight. Heat is fine because they react similar to a cacti in hot conditions. Bright rather than light (direct), is the key.',
  watering: 'These are succulents which are mainly made up of water and retain a lot of water in it\'s foliage (for storage), similar to a cactus. The soil needs to be moist which is easy to check by placing a finger an inch deep into the soil to make sure it is not dry. It needs much less in the winter.',
  soil: 'A pot mixture used for cactus will suffice or a soil mix that drains well and is well aerated.',
  re_potting: 'Re-pot when the plant has outgrown it\'s pot. It\'s best to re-pot the offsets (small aloes - pups) in separate pots once they have grown enough.',
  level_of_care: 'Minimal care: For the indoor grower taking care of the A. Vera....it\'s an easy task (read the rest of the information on them). These are slow growers and need your patience.'
 )

peace_lily = Plant.create!(
  name:         'Peace Lily',
  latin_name: 'Spathiphyllum Wallisii',
  remote_photo_url:      lily,
  water_freq:  4,
  temperature: 'Average room temperature’s are fine. Avoid lower than 55°F/12°C in the winter.',
  light: 'They like light, however, direct sunshine can damage plant leaves. A mixture of light and shade is great, if you can provide it. If you see the leaves yellowing this could be caused by too much sunlight.',
  watering: 'This plant does drink a lot of water in the summer. Keeping the soil moist (not over watered) and allowing it to dry slightly near the top is a good idea. If in the winter the soil stays slightly damp for a couple of weeks or more, that\'s ok , dont water any more. Your plant will let you know when it needs more.',
  soil: 'A peat based potting mix with perlite is ideal or other peat based mixes.',
  re_potting: 'Re-potting each spring is the usual drill.',
  level_of_care: 'Medium care level: It\'s important to make sure the place has plenty of light, but not direct sunlight to prevent damaging the leaves. The best environment they prefer is light and shade throughout a day.',
  pruning: 'These plants rarely need pruning...well, not at all, to reduce size anyway. You will need to cut away dying leaves and the flowers when they have seen better days and that should be about it.'
)
weeping_fig = Plant.create!(
  name:         'Weeping Fig',
  latin_name: 'Ficus Benjamina',
  remote_photo_url:      fig,
  water_freq:  9,
  temperature: 'Room temperatures of around 65°f /16°c --- 75°f / 24°c is ideal. Try not to allow temperatures to decrease lower than 50°f / 10°c,although they can handle a bit lower, without problems.',
  light: 'Bright light is what keeps the weeping fig happy, that is partially shaded. A spot that receives some sun and shade during the day is great.',
  watering: 'Allow the compost to dry to a certain extent (at the top) between each watering with tepid filtered or distilled water. Over-watering and under-watering can cause the leaves to drop. To identify the problem check if the leaves are crispy or if they fold easily. If they fold then the problem could be over-watering, and if crispy the tree could be under watered. Add enough water that can seep from the top soil to the drainage holes, at the bottom of the container and remove the left over water to allow enough oxygen to the plant roots. Less watering in the winter is to be carried out.',
  soil: 'A fast draining soil-less mix is advised.',
  re_potting: 'These can be allowed to become pot bound to a certain extent; the weeping fig tree does not like to be disturbed. Only re-pot when necessary, which could be every couple of years when its growing in height and spread.',
  level_of_care: 'Medium care level: The F.benjamina really doesn’t like being moved around a home. Moving them kind of gives them a shock (they decide its time to drop leaves to produce new ones from the change in lighting, temperature, and humidity provided ), which can leave a tree looking pretty bare. Try to find a spot with the correct lighting (see light information), not close to any drafts in the home (from doors or windows) and then leave it to get comfortable. Only move if you realise it was not the best place, or if you really have to.',
  pruning: 'Your growing tree will enjoy having old leaves removed and being pruned to the size that suits it\'s indoor living space, especially if it is healthy and growing well where it now sits. Pruning is best done after summer and before the next spring.'
)
moth_orchid = Plant.create!(
  name:         'Moth Orchid',
  latin_name: 'Phalaenopsis',
  remote_photo_url:      orchid,
  water_freq:  3,
  temperature: 'They like their warmth during the day and cool during the night. Room temperatures of around 65 - 85°F (16 - 24°C) during the day and 60 - 65°F ( 16 - 18°C) at night, are ideal growing conditions.',
  light: 'Providing enough light can be a problem for some growers because the moth orchid prefers bright light conditions for more than 10 hours a day. An east or west facing window is best suited - away from direct sun, but bright. During the winter you may have to supplement the plant with artificial lighting.',
  watering: 'Once the orchid soil becomes dry to the touch, water thoroughly. Avoid allowing water to keep the soil soaked; you want it to drain away easily. Avoid watering the middle of the plants foliage (crown) because the water sitting here for a period of time may cause rot. Do not over-water!',
  soil: 'Using an orchid potting mix is a good idea. A mix is likely to contain peat moss, perlite and fir bark or another combination, if it drains well. This soil needs to replaced every two years.',
  re_potting: 'The potting mix needs to be changed at least once every 2 years, during spring. The potting mix will start to become a problem for the plant when it becomes old and deteriorates. Try to re-pot in a pot similar to the size of the roots and pot it\'s already growing in, then remove unsavoury roots whilst re-potting. The roots that were sitting on the top of the soil need to be placed back in that position and not buried.',
  level_of_care: 'These plants enjoy to be provided with above average humidity levels, warm temperatures and bright light for long periods, which makes them moderately easy for people to grow, but difficult for others.

  Once a stalk begins growing over 12 inches tall or so, you will find it might need to be supported (with a stake) to grow upright.'
)
corn_plant = Plant.create!(
  name:         'Corn Plant',
  latin_name: 'Dracaena Fragrans',
  remote_photo_url:      corn,
  water_freq:  6,
  temperature: 'Temperatures from 60°F (15°C) - 75°F (24°C) are ideal. Under 55°F/12°C is going to harm the plant which may become noticeable if the leaves begin curling. Try and avoid the plant being near cold drafts, which will also cause harm.',
  light: "A good mix of sun shine and shade is ideal for this dracaena, but hardly any direct sunlight. Although it grows quicker and better in bright light you'll also find it survives and grows well enough in low light conditions.",
  watering: 'We would advise a grower to keep the soil slightly damp to the touch and in the winter slightly dry.',
  soil: 'Most well draining potting soil mix types are fine to use.',
  re_potting: "Once very 2 -3 years and a pot one size bigger if it's becoming terribly pot bound. Slightly pot bound is fine.",
  level_of_care: 'This plant need little care, though be careful with your pets, this plant is toxic for cats and dogs'
)
parlor_palm = Plant.create!(
  name:         'Parlor Palm',
  latin_name: 'Chamaedorea Elegans',
  remote_photo_url:      parlor,
  water_freq:  8,
  temperature: 'Average warmth 65°F (18°C) and above is fine and no less than 50°F (10°C) at night.',
  light: "These are not demanding for the grower when it comes to providing enough light. Any shaded type room will suffice with indirect sunlight.",
  watering: "Watering the parlor palm too much will cause growing problems and could possibly kill it off. A small amount of watering once the soil starts to dry. Very little is needed in the winter. Making sure the roots have good drainage is something they like.",
  soil: 'Any decent potting mix will suffice (soil or soilless).',
  re_potting: "Re-pot only when necessary, like when it becomes pot bound, because these do not like being disturbed too often .",
  level_of_care: 'This plant need few attention.'
)
lucky_bamboo_plant = Plant.create!(
  name:         'Lucky Bamboo Plant',
  latin_name: 'Dracaena Sanderiana',
  remote_photo_url:      bamboo,
  water_freq:  7,
  temperature: "Warm room temperature's and above are advised 65°F (18°C) - 90°F (32°C). Avoid lower than 55°F/12°C in the winter.",
  light: "In it's natural habitat the lucky bamboo grows under the cover of shaded trees, so place your plant in a bright spot without direct sunlight which can burn the leaves that will mimic their natural living space.",
  watering: "In a vase or water type pot change the water once every 7 days with distilled or bottled water. If your dracaena braunii is grown in soil (which is it's natural way of growing), water once the soil becomes slightly dry to the touch.",
  soil: "A well draining potting soil mix is advised.",
  re_potting: "Re-pot a plant living in soil when it becomes pot bound or every 2 years. If your plant sits in water with pebbles at the bottom for stability, re-pot to a bigger container once the previous one becomes too small and when the pebbles and container need cleaning. Cleaning the water container will prevent bacteria problems.",
  level_of_care: "The water has to be replaced every 7 days, apart from this, the lucky bamboo plant don't need much attention"
)
aluminium_plant = Plant.create!(
  name:         'Aluminum Plant',
  latin_name: 'Pilea Cadierei',
  remote_photo_url:      alu,
  water_freq:  5,
  temperature: 'Pilea cadierei requires a year-round temperature between 60-75 ºF (15-23 ºC). It can tolerate short periods of time outside of this temperature range, but continued exposure will kill the plant.',
  light: "his plant requires at least four hours of indirect, but bright, sunlight a day. Do not permit this plant to be exposed to overly bright or direct sunlight. Too much sun will burn the leaves and cause the green parts to turn brown.",
  watering: "The Aluminum plant needs to be watered differently during different times of the year. During spring and summer, the top quarter inch of the soil should be kept moist. During fall and winter, allow the top quarter inch of soil to dry out before watering again. Do not permit water to stand in the saucer underneath the plant.",
  soil: "This plant prefers a sandy soil mixture to live in. Combine one part clean sand (or perlite) with two parts peat to provide the required soil content for continued health.",
  re_potting: "Check the root density of Pilea cadierei every spring. If the roots are becoming overly dense, transplant the plant to a size larger pot. If you do not, the root system will break the container in an attempt to find more room to grow.",
  level_of_care: 'Trim the leaves when they turn yellow. Be careful with bugs that tend to eat the green part of the leaves'
)
dumb_cane = Plant.create!(
  name:         'Dumb Cane',
  latin_name: 'Dieffenbachia Amoena',
  remote_photo_url:      dumb,
  water_freq:  3,
  temperature: "Dieffenbachia amoena grows best when the temperature it is exposed to is between 65-75 ºF (18-23 ºC). Outside of this temperature zone, growth will continue at a greatly reduced rate, with tolerance extremes ranging from 40-90 ºF (4-35 ºC) Beyond these extremes, the plant will stop growing and may die with prolonged exposure.",
  light: "This plant prefers bright, indirect sun light for the optimal growth. It will accept lighting conditions up to full shade and continue stunted growth. Full sun will burn the leaves.",
  watering: "For the best results, keep the dumb cane plant's top inch of soil moist at all times. It will tolerate extended periods of watering neglect, but the leaves will begin to shrivel. Watering makes the leaves stiffen. Before moving the plant, allow the soil to dry out. This will give the leaves a more rubbery texture which will better survive the handling process.",
  soil: "This plant is not picky about its soil conditions. It will grow in almost any soil mix except sand and orchid mixtures. For best results, a one to one mixture of potting soil and perlite should be used.",
  re_potting: "This plant needs to have its root density checked annually in the spring. If the roots are becoming dense, re-pot into a size bigger pot. Reduce watering for a week before transplant.",
  level_of_care: 'This plant need relative cares, especially during the bloom period, Buds that turn brown have to be immediately removed'
)
panda_plant = Plant.create!(
  name:         'Panda Plant',
  latin_name: 'Kalanchoe Tomentosa',
  remote_photo_url:      panda,
  water_freq:  8,
  temperature: "Temperatures between 60-75 ºF (15-23 ºC) are advised.",
  light: "his kalanchoe - like many other succulents loves basking in bright light and sunshine. A mixture of direct, indirect and shade is a good balance of sunlight - if that can be provided.",
  watering: "Only water once the soil has become dry and then soak the soil, but do not leave water in the bottom tray. During the winter you'll need to water less. Because this is a succulent - it stores water within its leaves, so even if you forget to water for a period of time the plant will be fine.",
  soil: "Use a cacti and succulent potting mix, or your own mix which drains easily (part sand).",
  re_potting: "The panda plant is a slow grower which will only need re-potting once every 2 years and then less once it matures.",
  level_of_care: "The panda plant doesn't need much attention"
)
swiss_cheese_plant = Plant.create!(
  name:         'Swiss Cheese Plant ',
  latin_name: 'Monstera Deliciosa',
  remote_photo_url:      swiss,
  water_freq:  8,
  temperature: '',
  light: "",
  watering: '',
  soil: '',
  re_potting: "",
  level_of_care: ''
)
parlor_palm = Plant.create!(
  name:         'Parlor Palm',
  latin_name: 'Chamaedorea Elegans',
  remote_photo_url:      parlor,
  water_freq:  8,
  temperature: '',
  light: "",
  watering: '',
  soil: '',
  re_potting: "",
  level_of_care: ''
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
  lastname: 'Peterson',
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
  lastname: 'Murphy',
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
    remote_photo_url: u_spider_plant,
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
