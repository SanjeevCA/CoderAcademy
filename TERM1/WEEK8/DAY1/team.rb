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

end

