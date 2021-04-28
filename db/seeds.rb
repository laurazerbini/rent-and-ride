# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'test'
vanmoof = Bike.create(bike_name: 'VanMoof S3', bike_address: 'Berlin', bike_description: 'Very good bike', price: 20, availability: true, bike_url: 'www.test.de', user_id: 1)
vanmoof.save!
cowboy = Bike.create(bike_name: 'Cowboy S3', bike_address: 'Brussels', bike_description: 'A stable bike', price: 19, availability: true, bike_url: 'www.test.de', user_id: 1)
cowboy.save!
angell = Bike.create(bike_name: 'Angell', bike_address: 'Paris', bike_description: 'Runs very smooth', price: 25, availability: true, bike_url: 'www.test.de', user_id: 1)
angell.save!

puts 'test finished'
