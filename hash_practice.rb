bobby_toys = {"colors"=> ["red ball", "green ball", "blue book"], "dolls" => ["Hello Kitty", "BatzMaru", "Chococat", "Keroppi"], "action figures" => ["Batman", "Superman"]}
puts "Bobby's Dolls: #{bobby_toys.fetch ("dolls")}"
puts "#{bobby_toys.values} catagories"

bobby_clothes= {colors: ["blue diapers", "red cloth diapers", "green diapers"], shorts: ["blue shorts", "red shorts", "brown shorts"]} 
puts "Bobby's clothes: #{bobby_clothes[:colors]} and  #{bobby_clothes[:shorts]}"

bobby_foods= {eats: ["cheese", "rice", "oatmeal"], does_not_eat: ["eggs", "vegetables", "prune juice"]}

puts "Bobby likes to eat #{bobby_foods[:eats]}. Bobby doesn't like to eat #{bobby_foods[:does_not_eat]}"
