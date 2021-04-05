require "./parts"
require 'artii'
require 'rainbow'

artii = Artii::Base.new()
title = artii.asciify('=WEAPON=CRAFTER=0 . 1=')

puts Rainbow(title).color(:firebrick)
puts "Welcome to the Weapon Crafting chamber! What would you like to do? (create, save, load or delete)"

puts "Choose the name of your weapon!"

@weapon_name = gets.chomp

puts "Choose your grip!"

@grip = gets.chomp.downcase

puts "Choose your guard!"

@guard = gets.chomp.downcase

puts "Choose your blade!"

@blade = gets.chomp.downcase

puts "          <placeholder for ascii image>"

puts Weapon.new(Rainbow(@weapon_name).color(:purple), @grip, @guard, @blade)






