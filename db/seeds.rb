# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'test'
Bike.destroy_all
bike = Bike.create(bike_name: 'Van Moof S3', bike_address: 'Berlin', bike_description: 'Very good bike', price: 20, availability: true, bike_url: 'www.test.de')
bike.save!
puts 'test finished'
