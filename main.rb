require 'artii'
require 'rainbow'

artii = Artii::Base.new()
title = artii.asciify('=WEAPON=CRAFTER=0 . 1=')

puts Rainbow(title).color(:firebrick)
puts "Welcome to the Weapon Crafting chamber! Choose a name for your weapon."

weapon = gets.chomp

puts "Choose your pommel!"

pommel = gets.chomp

puts "Choose your handle!"

handle = gets.chomp

puts "Choose your blade!"

blade = gets.chomp

