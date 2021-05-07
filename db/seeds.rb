require "open-uri"
User.create!(email: '2@any.any', password: '123456')

puts 'test'
Bike.destroy_all
vanmoof = Bike.create(bike_name: 'Vanmoof', bike_address: 'Berlin', bike_description: 'Very good bike', price: 20, availability: true, bike_url: 'www.test.de', user_id: 1)
file = URI.open('https://d21buns5ku92am.cloudfront.net/64037/images/249469-RAW_2368_3-4e5d75-large-1496767684.jpg')
vanmoof.photo.attach(io: file, filename: 'vanmoof.jpg', content_type: 'image/png')
vanmoof.save!

cowboy = Bike.create(bike_name: 'Cowboy', bike_address: 'Brussels', bike_description: 'A stable bike', price: 19, availability: true, bike_url: 'www.test.de', user_id: 1)
file = URI.open('https://cdn.vox-cdn.com/thumbor/NAIbd0MwpchbaPES8P3JSbcOHYE=/0x0:2040x1351/3320x1868/filters:focal(884x827:1210x1153):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/67467034/verge_DSC_0771_2040pxl.0.jpg')
cowboy.photo.attach(io: file, filename: 'cowboy.jpg', content_type: 'image/png')
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
