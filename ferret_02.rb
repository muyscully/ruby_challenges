class Animal
	def set_type= (animal_type)
		@type = animal_type
	end

	def get_animal_type
		return type
	end
 
	def set_name= (animal_name)
		@name = animal_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def set_noise=(animal_sound)
		@sound= animal_sound
	end

	def make_noise 
		return @sound
	end
 
end
 

 
my_ferret = Animal.new
my_ferret.set_type = "ferret"
my_ferret.set_name = "Fredo"
my_ferret.set_noise = "squeal"
ferret_name = my_ferret.get_name
 
my_parrot = Animal.new
my_parrot.set_type = "parrot"
my_parrot.set_name = "Budgie"
my_parrot.set_noise = "Budgie wanna cracker!"
parrot_name = my_parrot.get_name
 
my_chincilla = Animal.new
my_chincilla.set_type = "chincilla"
my_chincilla.set_name= "Dali"
my_chincilla.set_noise = "squeek!"
chincilla_name = my_chincilla.get_name
 
puts "#{ferret_name} says #{my_ferret.make_noise}, 
#{parrot_name} says #{my_parrot.make_noise}, 
and #{chincilla_name} says #{my_chincilla.make_noise}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chincilla.inspect

animal_parade= [my_ferret, my_parrot]
puts "It's the animal parade! #{animal_parade[0].get_name} #{animal_parade[1].get_name}"
animal_parade.push(my_chincilla)
puts "It's one more added to the parade #{animal_parade[2].get_name}"
