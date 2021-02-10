# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

200.times do
  restaurant = Restaurant.new(
  name: Faker::Restaurant.name,
  category: Restaurant::CATEGORIES.sample,
  phone_number: Faker::PhoneNumber.cell_phone,
  address: Faker::Address.street_address
  )
  restaurant.save
  (0..20).to_a.sample.times do
    review = Review.new(
      restaurant: restaurant,
      content: Faker::Lorem.paragraph,
      rating: (0..5).to_a.sample
    )
    review.save
  end

end