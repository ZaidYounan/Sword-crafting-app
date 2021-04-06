require "./parts"
require 'artii'
require 'rainbow'

artii = Artii::Base.new()
title = artii.asciify('=SWORD=CRAFTER=0 . 4=')
puts Rainbow(title).color(:firebrick)
puts "Welcome to the Weapon Crafting chamber! What would you like to do?"
begin
print "(create, load, delete or quit): "
        user_input = gets.chomp.downcase.strip
        if user_input == "create"
            Weapon::create
        end
        if user_input == "load"
            Weapon::load
        end
        if user_input == "delete"
            Weapon::delete
        end
end until [ 'quit', 'q', 'exit'].include? user_input


