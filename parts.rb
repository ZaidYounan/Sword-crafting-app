class Weapon
    attr_reader :weapon_name
    attr_accessor :grip, :guard, :blade, :strength, :speed, :defence, :ascii_image

    # Array to store created swords
    SWORDS = []

    
    def initialize(weapon_name, grip, guard, blade)
        @weapon_name = weapon_name
        @strength = 0
        @speed = 0
        @defence = 0
        self.grip = grip
        self.guard = guard
        self.blade = blade
        self.ascii_image = ascii_image
        SWORDS << self
    end

    # Method to create swords
    def self.create

        puts "Choose the name of your weapon!".colorize(:light_magenta)
        @weapon_name = gets.chomp.strip
        while SWORDS.any?{ |s| s.weapon_name == @weapon_name} do
                puts "That sword name already exists, please choose another.".colorize(:light_blue)
                @weapon_name = gets.chomp.strip
        end

        puts "Choose your grip! (Straight, curved or wicked)".colorize(:light_magenta)
        @grip = gets.chomp.downcase.strip
        until @grip == "straight" || @grip == "curved" || @grip == "wicked"
            if not @grip == "straight" || @grip == "curved" || @grip == "wicked"
                puts "Please select either a straight, curved or wicked grip.".colorize(:red)
                @grip = gets.chomp.downcase.strip
            end
        end

        puts "Choose your guard! (Forward, flat or basket)".colorize(:light_magenta)
        @guard = gets.chomp.downcase.strip
        until @guard == "forward" || @guard == "flat" || @guard == "basket"
            if not @guard == "forward" || @guard == "flat" || @guard == "basket"
                puts "Please select either a forward, flat or basket guard.".colorize(:red)
                @guard = gets.chomp.downcase.strip
            end
        end

        puts "Choose your blade! (Narrow, curved or broad)".colorize(:light_magenta)
        @blade = gets.chomp.downcase.strip
        until @blade == "narrow" || @blade == "curved" || @blade == "broad"
            if not @blade == "narrow" || @blade == "curved" || @blade == "broad"
                puts "Please select either a narrow, curved or broad blade.".colorize(:red)
                @blade = gets.chomp.downcase.strip
            end
        end
        # Sound that requires SOX installed, commented out by default
        # `play -q ./audio/hammeringanvil.mp3`
        puts Weapon.new(@weapon_name, @grip, @guard, @blade)
    end

    # Prints out display list of current swords
    def self.view
        if SWORDS.length > 0
            puts "Opening sword rack...".colorize(:light_blue)
            # Sound that requires SOX installed, commented out by default
            # `play -q ./audio/loadsound.mp3`
            puts "\n --- SWORD RACK ---"
            puts SWORDS
        else puts "Sword rack is empty.".colorize(:light_blue)
        end
    end

    # Method to delete stored swords
    def self.delete
        if SWORDS.length > 0
            Weapon::view
            puts "Which weapon would you like to delete?".colorize(:light_blue)
            delete_target = gets.chomp.strip.downcase
            until SWORDS.any?{|s| s.weapon_name.downcase == delete_target}
                puts "Please enter a valid sword name.".colorize(:light_blue)
                delete_target = gets.chomp.strip.downcase
            end
            SWORDS.delete_if{ |sword| sword.weapon_name.downcase == delete_target}
            Weapon::view
        else puts "You have no swords yet."
        end
    end

    # Store grip choices, and iterate the stats on them
    def grip=(grip)
        @grip = grip
        if @grip == "straight"
            @strength = strength + 8 
            @speed = speed + 4
            @defence = defence + 3
        elsif @grip == "curved"
            @strength = strength + 3 
            @speed = speed + 8
            @defence = defence + 4
        elsif @grip == "wicked"
            @strength = strength + 6 
            @speed = speed + 6
            @defence = defence + 3
        end
    end 

    # Store guard choices, and iterate the stats on them
    def guard=(guard)
        @guard = guard
        if @guard == "forward"
            @strength = strength + 8
            @speed = speed + 4
            @defence = defence + 3
        elsif @guard == "flat"
            @strength = strength + 3
            @speed = speed + 6
            @defence = defence + 6
        elsif @guard == "basket"
            @strength = strength + 3
            @speed = speed + 4
            @defence = defence + 8
        end
    end

    # Store blade choices, and iterate the stats on them
    def blade=(blade)
        @blade = blade
        if @blade == "narrow"
            @strength = strength + 8
            @speed = speed + 4
            @defence = defence + 3
        elsif @blade == "curved"
            @strength = strength + 3
            @speed = speed + 8
            @defence = defence + 4
        elsif @blade == "broad"
            @strength = strength + 4
            @speed = speed + 3
            @defence = defence + 8
        end
    end

    # Evaluates sword component choices and decides which sword image should be printed
    def ascii_image=(ascii_image)
        @ascii_image = ascii_image

        if @grip == "straight" && @guard == "forward" && @blade == "narrow"
            File.foreach('./swords/sword1.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "forward" && @blade == "curved"
            File.foreach('./swords/sword2.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "forward" && @blade == "broad"
            File.foreach('./swords/sword3.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "flat" && @blade == "narrow"
            File.foreach('./swords/sword4.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "flat" && @blade == "curved"
            File.foreach('./swords/sword5.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "flat" && @blade == "broad"
            File.foreach('./swords/sword6.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "basket" && @blade == "narrow"
            File.foreach('./swords/sword7.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "basket" && @blade == "curved"
            File.foreach('./swords/sword8.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "basket" && @blade == "broad"
            File.foreach('./swords/sword9.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "forward" && @blade == "narrow"
            File.foreach('./swords/sword10.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "forward" && @blade == "curved"
            File.foreach('./swords/sword11.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "forward" && @blade == "broad"
            File.foreach('./swords/sword12.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "flat" && @blade == "narrow"
            File.foreach('./swords/sword13.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "flat" && @blade == "curved"
            File.foreach('./swords/sword14.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "flat" && @blade == "broad"
            File.foreach('./swords/sword15.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "basket" && @blade == "narrow"
            File.foreach('./swords/sword16.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "basket" && @blade == "curved"
            File.foreach('./swords/sword17.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "curved" && @guard == "basket" && @blade == "broad"
            File.foreach('./swords/sword18.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "forward" && @blade == "narrow"
            File.foreach('./swords/sword19.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "forward" && @blade == "curved"
            File.foreach('./swords/sword20.txt') do |line|
                puts "#{line}"
            end

        elsif @grip == "wicked" && @guard == "flat" && @blade == "broad"
            File.foreach('./swords/sword24.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "forward" && @blade == "broad"
            File.foreach('./swords/sword21.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "flat" && @blade == "narrow"
            File.foreach('./swords/sword22.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "flat" && @blade == "curved"
            File.foreach('./swords/sword23.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "flat" && @blade == "broad"
            File.foreach('./swords/sword24.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "basket" && @blade == "narrow"
            File.foreach('./swords/sword25.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "basket" && @blade == "curved"
            File.foreach('./swords/sword26.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "basket" && @blade == "broad"
            File.foreach('./swords/sword27.txt') do |line|
                puts "#{line}"
            end

        end
    end

    # Override of to_s in order to properly display sword stats and images.
    def to_s
    "#{@ascii_image}\n" +
    "#{Rainbow(@weapon_name).color(:magenta)}\n" +
    Rainbow("Featuring a #{@grip.downcase} grip, a #{@guard.downcase} guard and a #{@blade.downcase} blade.").gold +
    "\nTotal stats are:\n".colorize(:blue) +
    "Strength = ".colorize(:light_cyan) + "#{@strength}\n".colorize(:red) +
    "Speed = ".colorize(:light_cyan) + "#{@speed}\n".colorize(:green) +
    "Defence = ".colorize(:light_cyan) + "#{@defence}\n".colorize(:yellow)
    end
end



