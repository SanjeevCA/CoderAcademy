class Team

    require "colorize"

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
        puts "#{@city} #{@name}, #{@stadium}".green.on_black
        puts "======================================================"
        puts "Coach: #{@coach}  |  Uniform: #{@uniform}".red.on_black
        puts "------------------------------------------------------"
        puts "Players: ".yellow.on_black
        puts
        @players.each {|player| puts "#{player}".yellow.on_black}
        puts
        puts "------------------------------------------------------"
        puts "Staff: ".red.on_black
        puts
        @staff.each {|staff| puts "#{staff}".red.on_black}
        puts
        puts "======================================================"
    end

end

