
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

        puts "Choose your guard! (Forward, flat or basket)"
        @guard = gets.chomp.downcase.strip

        puts "Choose your blade! (Narrow, curved or broad)"
        @blade = gets.chomp.downcase.strip

        # `play -q ./audio/hammeringanvil.mp3`
        puts Weapon.new(@weapon_name, @grip, @guard, @blade)
    end

    def self.load
        if SWORDS.length > 0
            puts "Opening sword rack..."
            # `play -q ./audio/loadsound.mp3`
            puts "
            
            --- SWORD RACK ---"
            puts SWORDS
        else puts "Sword rack is empty :("
        end
    end

    def self.delete
        Weapon::load
        puts "Which weapon would you like to delete?"
        delete_target = gets.chomp.strip.downcase
        SWORDS.delete_if{ |sword| sword.weapon_name.downcase == delete_target}
        Weapon::load
    end

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

    def to_s
       "#{@ascii_image}
        #{Rainbow(@weapon_name).color(:purple)}
        Featuring a #{@grip.capitalize} grip, a #{@guard.capitalize} guard and a #{@blade.capitalize} blade.
        Total stats are: 
        Strength = #{@strength}
        Speed = #{@speed}
        Defence = #{@defence}"
    end
end



