puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'japanese', phone_number: "333333" }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'chinese', phone_number: "333333"}
mega_eats =  {name: "Mega Eats", address: "Planet road 44", category: 'belgian', phone_number: "333333"}
doudous_fish_and_chips =  {name: "DOUDOUs Fish and Chips", address: "somewehre on earth", category: 'italian', phone_number: "333333"}
fast_jhonny =  {name: "Fast Jhonny", address: "44 Klumzy road", category: 'french', phone_number: "333333"}

[dishoom, pizza_east, mega_eats,doudous_fish_and_chips, fast_jhonny].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
