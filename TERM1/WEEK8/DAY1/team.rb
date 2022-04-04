class Team

    def initialize (name, city, stadium, uniform, players, coach, staff)
        @name = name
        @city = city
        @stadium = stadium
        @uniform = uniform
        @players = players
        @coach = coach
        @staff = staff
    end

    # default method for what to print when the class is puts
    def to_s
        return "#{@city} #{@name}, #{@stadium}, #{@uniform}"
    end

    def team_info

        puts "======================================================"
        puts "#{@city} #{@name}, #{@stadium}"
        puts "======================================================"
        puts "Coach: #{@coach}  |  Uniform: #{@uniform}"
        puts "------------------------------------------------------"
        puts "Players: "
        puts
        @players.each {|player| puts player}
        puts
        puts "------------------------------------------------------"
        puts "Staff: "
        puts
        @staff.each {|staff| puts staff}
        puts
        puts "======================================================"
    end

end

