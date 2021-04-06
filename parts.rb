class Weapon
    attr_reader :weapon_name, :grip, :guard, :blade
    attr_accessor :strength, :speed, :defence

    SWORDS = []

    def initialize(weapon_name, grip, guard, blade)
        @weapon_name = weapon_name
        @strength = 0
        @speed = 0
        @defence = 0
        self.grip = grip
        self.guard = guard
        self.blade = blade
        SWORDS << self
    end

    def grip=(grip)
        @grip = grip
        if @grip == "straight"
            @strength = strength + 5 
            @speed = speed + 3
            @defence = defence + 5
        elsif @grip == "curved"
            @strength = strength + 3 
            @speed = speed + 5
            @defence = defence + 4
        elsif @grip == "wicked"
            @strength = strength + 4 
            @speed = speed + 4
            @defence = defence + 3
        end
    end 

    def guard=(guard)
        @guard = guard
        if @guard == "forward"
            @strength = strength + 5
            @speed = speed + 3
            @defence = defence + 3
        elsif @guard == "backward"
            @strength = strength + 4
            @speed = speed + 4
            @defence = defence + 4
        elsif @guard == "basket"
            @strength = strength + 3
            @speed = speed + 4
            @defence = defence + 5
        end
    end

    def blade=(blade)
        @blade = blade
        if @blade == "straight"
            @strength = strength + 4
            @speed = speed + 3
            @defence = defence + 5
        elsif @blade == "curved"
            @strength = strength + 3
            @speed = speed + 5
            @defence = defence + 3
        elsif @blade == "broad"
            @strength = strength + 5
            @speed = speed + 3
            @defence = defence + 4
        end
    end

    def to_s
        "Your weapon is: 
                #{@weapon_name}
                The grip is: #{@grip.capitalize}
                The guard is: #{@guard.capitalize}
                The blade is: #{@blade.capitalize}
                Total stats are: 
                Strength = #{@strength}
                Speed = #{@speed}
                Defence = #{@defence}"
    end
end



