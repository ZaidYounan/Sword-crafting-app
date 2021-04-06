require "./parts"
require 'artii'
require 'rainbow'

artii = Artii::Base.new()
title = artii.asciify('=WEAPON=CRAFTER=0 . 2=')

puts Rainbow(title).color(:firebrick)
    print "Welcome to the Weapon Crafting chamber! What would you like to do? (create, save, load or delete)"
        request = gets.chomp.downcase.strip


puts "Choose the name of your weapon!"

@weapon_name = gets.chomp.strip

puts "Choose your grip! (Straight, curved or wicked)"

@grip = gets.chomp.downcase.strip

puts "Choose your guard! (Forward, backward or basket)"

@guard = gets.chomp.downcase.strip

puts "Choose your blade! (Straight, curved, broad)"

@blade = gets.chomp.downcase.strip


puts Weapon.new(Rainbow(@weapon_name).color(:purple), @grip, @guard, @blade)

