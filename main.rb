#!/usr/bin/env ruby

require "./parts"
require 'artii'
require 'rainbow'
require 'colorize'

artii = Artii::Base.new :font => 'basic'
title = artii.asciify('=SWORD=CRAFTER=1 . 0=')
puts Rainbow(title).color(:firebrick)

puts "Welcome to the Weapon Crafting chamber! What would you like to do?".colorize(:light_blue)

begin
    print "Enter a command: (create, view, delete or quit): ".colorize(:light_blue)
        user_input = gets.chomp.downcase.strip
        if user_input == "create" || user_input == "c"
            Weapon::create
        end
        if user_input == "view" || user_input == "v"
            Weapon::view
        end
        if user_input == "delete" || user_input == "d"
            Weapon::delete
        end
end until [ 'quit', 'q', 'exit'].include? user_input


