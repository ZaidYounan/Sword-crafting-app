require "./parts"
require 'artii'
require 'rainbow'

artii = Artii::Base.new()
title = artii.asciify('=WEAPON=CRAFTER=0 . 1=')

puts Rainbow(title).color(:firebrick)
puts "Welcome to the Weapon Crafting chamber! What would you like to do? (create, save, load or delete)"

@weapon_name = gets.chomp
puts "Choose your grip!"

@grip = gets.chomp

puts "Choose your guard!"

@guard = gets.chomp

puts "Choose your blade!"

@blade = gets.chomp

puts Weapon.new(Rainbow(@weapon_name).color(:firebrick), @grip, @guard, @blade)


puts "ascii image"



