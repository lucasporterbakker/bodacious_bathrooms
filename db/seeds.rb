# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bathroom.delete_all

array = [true, false]

10.times do
  puts "Create a bathroom:"
  Bathroom.create(location: Faker::Address.city, bidet: array.sample, gender: ["male", "female", "unisex" ].sample, size: ["king", "queen" ].sample, heated: array.sample, squatter: array.sample, tp: array.sample)
end

puts "Done creating bathrooms."
