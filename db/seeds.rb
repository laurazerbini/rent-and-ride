
puts 'test'
Bike.destroy_all
vanmoof = Bike.create(bike_name: 'Vanmoof', bike_address: 'Berlin', bike_description: 'Very good bike', price: 20, availability: true, bike_url: 'www.test.de', user_id: 1)
vanmoof.save!
cowboy = Bike.create(bike_name: 'Cowboy', bike_address: 'Brussels', bike_description: 'A stable bike', price: 19, availability: true, bike_url: 'www.test.de', user_id: 1)
cowboy.save!
angell = Bike.create(bike_name: 'Angell', bike_address: 'Paris', bike_description: 'Runs very smooth', price: 25, availability: true, bike_url: 'www.test.de', user_id: 1)
angell.save!
angell = Bike.create(bike_name: 'Angell', bike_address: 'Amsterdam', bike_description: 'Runs very smooth', price: 25, availability: true, bike_url: 'www.test.de', user_id: 1)
angell.save!
vanmoof = Bike.create(bike_name: 'Cowboy', bike_address: 'Hamburg', bike_description: 'Very good bike', price: 20, availability: true, bike_url: 'www.test.de', user_id: 1)
vanmoof.save!
cowboy = Bike.create(bike_name: 'Angell', bike_address: 'Bruges', bike_description: 'A stable bike', price: 19, availability: true, bike_url: 'www.test.de', user_id: 1)
cowboy.save!
angell = Bike.create(bike_name: 'Vanmoof', bike_address: 'Paris', bike_description: 'Runs very smooth', price: 25, availability: true, bike_url: 'www.test.de', user_id: 1)
angell.save!
angell = Bike.create(bike_name: 'Angell', bike_address: 'Paris', bike_description: 'Runs very smooth', price: 25, availability: true, bike_url: 'www.test.de', user_id: 1)
angell.save!
angell = Bike.create(bike_name: 'Vanmoof', bike_address: 'Paris', bike_description: 'Runs very smooth', price: 25, availability: true, bike_url: 'www.test.de', user_id: 1)
angell.save!
vanmoof = Bike.create(bike_name: 'Cowboy', bike_address: 'Berlin', bike_description: 'Very good bike', price: 20, availability: true, bike_url: 'www.test.de', user_id: 1)
vanmoof.save!

puts 'test finished'
