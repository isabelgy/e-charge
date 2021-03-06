# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rental.delete_all


Station.delete_all

User.delete_all

st1 = Station.create(latitude: '31.230390', longitude: '121.473702', availability: [false, true].sample, photo: 'http://p6.p.pixnet.net/albums/userpics/6/8/1945968/4a22857bc90d0.jpg', address: '中共二大会址纪念馆'  )
st2 = Station.create(latitude: '31.229448', longitude: '121.470441', availability: [false, true].sample, photo: 'https://static.panoramio.com.storage.googleapis.com/photos/large/54044725.jpg', address: '上海市黄浦区瑞金一路168号' )
st3 = Station.create(latitude: '31.227466', longitude: '121.463488', availability: [false, true].sample, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSITql3ye88aNR_Ez-5VcgKjKyO1YmUdD1LZcYgL8loyNY5dbwG', address: '上海市静安区陕西南路106号' )
st4 = Station.create(latitude: '31.222989', longitude: '121.451300', availability: [false, true].sample, photo: 'http://farm8.static.flickr.com/7754/16745442014_7a6fc9d211_c.jpg', address: '上海市静安区乌鲁木齐中路15号'  )

user1 = User.create( name: Faker::StarTrek.character)
user2 = User.create( name: Faker::StarTrek.character)
user3 = User.create( name: Faker::StarTrek.character)
user4 = User.create( name: Faker::StarTrek.character)

Station.all.each do |station|
  Rental.create
  puts 'created rental'
end

# rental1 = Rental.new
# rental1.user = user1
# rental1.station = st1
# rental1.save
# puts 'created rental'

# rental2 = Rental.new
# rental2.user = user2
# rental2.station = st2
# rental2.save
# puts 'created rental'

# rental3 = Rental.new
# rental3.user = user3
# rental3.station = st3
# rental3.save
# puts 'created rental'

# rental4 = Rental.new
# rental4.user = user4
# rental4.station = st4
# rental4.save
# puts 'created rental'

