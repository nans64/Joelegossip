# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::HowIMetYourMother.quote, email: Faker::Internet.email, age: rand(18..65), city_id: rand(1..(City.all.count)))
end

20.times do
  Gossip.create!(title: Faker::StrangerThings.character,content: Faker::StrangerThings.quote, user_id: rand(1..(User.all.count)))
end

100.times do
  PrivateMessage.create!(recipient_id: rand(1..(User.all.count)), sender_id: rand(1..(User.all.count)), content: Faker::StrangerThings.quote)
end