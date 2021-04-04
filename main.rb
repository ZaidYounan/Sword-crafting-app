load('parts.rb')
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

if @grip == "curved" && @guard == "wicked" && @blade == "straight"
    puts "Your sword is called #{@weapon_name}, constructed with a #{@grip} grip, a #{@guard} guard and a #{@blade} blade."
else
    puts "nope"
end

puts "ascii image"



