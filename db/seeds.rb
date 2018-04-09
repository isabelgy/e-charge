# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

available? = [false, true]

Station.create(location: '31.230390, 121.473702', availability: available?.sample, photo: 'http://p6.p.pixnet.net/albums/userpics/6/8/1945968/4a22857bc90d0.jpg' )
Station.create(location: '31.229448, 121.470441', availability: available?.sample, photo: 'https://static.panoramio.com.storage.googleapis.com/photos/large/54044725.jpg' )
Station.create(location: '31.227466, 121.463488', availability: available?.sample, photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSITql3ye88aNR_Ez-5VcgKjKyO1YmUdD1LZcYgL8loyNY5dbwG
https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSITql3ye88aNR_Ez-5VcgKjKyO1YmUdD1LZcYgL8loyNY5dbwG' )
Station.create(location: '31.222989, 121.451300', availability: available?.sample, photo: 'http://farm8.static.flickr.com/7754/16745442014_7a6fc9d211_c.jpg
http://farm8.static.flickr.com/7754/16745442014_7a6fc9d211_c.jpg' )

