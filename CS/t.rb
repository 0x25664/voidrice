#!/usr/bin/env ruby
class Person
	def initialize name, hp, pow, stamina, realm
		@hp = hp
		@pow = pow
		@stamina = stamina
		@name = name.capitalize
		@realm = realm.capitalize
	end
	def getInfo
		p "Name: #{@name}"
		p "Health: #{@hp}"
		p "Power: #{@pow}"
		p "Stamina: #{@stamina}"
		p "Realm: #{@realm}"
	end
	def attack
		@stamina -= 15
		p "#{@name} attacked!"
	end
	def defend
		@hp -= 5
		@stamina -= 5
		p "#{@name} defended himself!"
	end
	def takeAHit
		@hp -= 15
		p "#{@name} took a hit!"
	end
	def getValues
		return @name, @hp, @pow, @stamina, @realm
	end
end


andrei = Person.new("Andrei", 100, 100, 100, "Earth Prime")
andrei.getInfo
