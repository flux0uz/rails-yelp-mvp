# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
sens_uniques = { name: "Sens Unique", address: "44 Rue Damrémont, 75018 Paris", phone_number: "01 42 23 04 63", category: "french" }
sunset =  { name: "Sunset", address: "100 Rue Ordener, 75018 Paris", phone_number: "01 71 28 99 33", category: "french" }
soleil_levant =  { name: "Soleil Levant", address: "107 Rue Damrémont, 75018 Paris", phone_number: "01 42 57 79 04", category: "chinese" }
mezza =  { name: "Mezza Luna", address: "18 Rue de la Fontaine du But, 75018 Paris", phone_number: "01 42 23 90 26", category: "italian" }
enishi =  { name: "Enishi", address: "67 Rue Labat, 75018 Paris", phone_number: "01 42 57 32 14", category: "japanese" }


[ sens_uniques, sunset, soleil_levant, mezza, enishi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"