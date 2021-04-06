require 'rainbow'

class Weapon
    attr_reader :weapon_name, :grip, :guard, :blade
    attr_accessor :strength, :speed, :defence, :ascii_image

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

    def self.create
        puts "Choose the name of your weapon!"
        @weapon_name = gets.chomp.strip

        puts "Choose your grip! (Straight, curved or wicked)"
        @grip = gets.chomp.downcase.strip

        puts "Choose your guard! (Forward, backward or basket)"
        @guard = gets.chomp.downcase.strip

        puts "Choose your blade! (Straight, curved, broad)"
        @blade = gets.chomp.downcase.strip

        `play -q ./hammeringanvil.mp3`
        puts Weapon.new(Rainbow(@weapon_name).color(:purple), @grip, @guard, @blade) 
    end

    def self.load
        if SWORDS.length > 0
            puts "Opening sword rack..."
            `play -q ./loadsound.mp3`
            puts "
            
            --- SWORD RACK ---"
            puts SWORDS
        else puts "Sword rack is empty :("
        end
    end

# def find_index
#     index = SWORDS.find_index(@weapon_name)
# end

# def self.delete
#     "Which "
#     del = SWORDS.find_index(@weapon_name)
#     if SWORDS[del] > 0
#         SWORDS[del] = nil
#     end
# end

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

    def guard=(guard)
        @guard = guard
        if @guard == "forward"
            @strength = strength + 8
            @speed = speed + 4
            @defence = defence + 3
        elsif @guard == "backward"
            @strength = strength + 3
            @speed = speed + 6
            @defence = defence + 6
        elsif @guard == "basket"
            @strength = strength + 3
            @speed = speed + 4
            @defence = defence + 8
        end
    end

    def blade=(blade)
        @blade = blade
        if @blade == "straight"
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

    def ascii_image=(ascii_image)
        @ascii_image = ascii_image
        if @grip == "straight" && @guard == "forward" && @blade == "curved"
            File.foreach('./swords/sword2.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "wicked" && @guard == "forward" && @blade == "straight"
            File.foreach('./swords/sword19.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "forward" && @blade == "straight"
            File.foreach('./swords/sword1.txt') do |line|
                puts "#{line}"
            end
        elsif @grip == "straight" && @guard == "forward" && @blade == "broad"
            File.foreach('./swords/sword3.txt') do |line|
                puts "#{line}"
            end
        end
    end

    def to_s
       "#{@ascii_image}
        #{@weapon_name}
        Featuring a #{@grip.capitalize} grip, a #{@guard.capitalize} guard and a #{@blade.capitalize} blade.
        Total stats are: 
        Strength = #{@strength}
        Speed = #{@speed}
        Defence = #{@defence}"
    end
end



