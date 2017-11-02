# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
puts "creating 20 fake restaurants"
20.times do
  resto = Restaurant.new(
      name: Faker::LordOfTheRings.location,
      address: Faker::Address.street_address,
      category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
      phone_number: Faker::PhoneNumber.phone_number
  )
  resto.save
end
puts "finished"

puts "reviewing those restaurants"

100.times do
  post = Review.new(
      rating: [3,4,5].sample,
      content: Faker::FamilyGuy.quote,
      restaurant_id: (2..30).to_a.sample
  )
  post.save
end

puts "finished"