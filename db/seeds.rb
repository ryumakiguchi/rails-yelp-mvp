# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database"
Restaurant.destroy_all

puts "Creating restaurants..."
palacio_de_pizza = { name: 'palacio_pizza', address: 'corrientes 1020', phone_number: '2323', category: 'chinese'}
guerrin = { name: 'guerrin', address: '9 de julio 3030', phone_number: '5323', category: 'japanese'}
guitarrita = { name: 'guitarrita', address: 'libertador 3030', phone_number: '3232', category: 'chinese'}
los_inmortales = { name: 'los_inmortales', address: 'las heras 3330', phone_number: '32323', category: 'french'}
romario = { name: 'romario', address: 'ibera 333', phone_number: '13323', category: 'japanese'}

pizzerias = [palacio_de_pizza, guerrin, guitarrita, los_inmortales, romario]

pizzerias.each do |pizza|
  restaurant = Restaurant.create!(pizza)
  puts "Created #{restaurant.name}"
end
puts "Finished"
