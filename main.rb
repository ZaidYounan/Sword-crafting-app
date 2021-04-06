require "./parts"
require 'artii'
require 'rainbow'

artii = Artii::Base.new()
title = artii.asciify('=WEAPON=CRAFTER=0 . 2=')
puts Rainbow(title).color(:firebrick)
puts "Welcome to the Weapon Crafting chamber! What would you like to do?"
begin
print "(create, load or delete): "
        user_input = gets.chomp.downcase.strip
        if user_input == "create"
            Weapon::create
        end
        if user_input == "load"
            Weapon::load
        end
        if user_input == "delete"
        end
end until [ 'quit', 'q', 'exit'].include? user_input


