# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Seeding's starting…"

5.times do
  Flat.create!(
    name: Faker::Mountain.name,
    address: Faker::Address.street_address,
    description: Faker::GreekPhilosophers.quote,
    price_per_night: rand(25..125),
    number_of_guests: rand(1..5)
  )
end

puts "Seeding's done!"
