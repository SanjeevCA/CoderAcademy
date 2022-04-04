require "colorize"
require "faker"

require_relative "./team.rb"
require_relative "./league.rb"
require_relative "./team_member.rb"
require_relative "./player.rb"
require_relative "./coach.rb"
require_relative "./staff.rb"

tm1 = Team_Member.new("Payne Haas")
player1 = Player.new("Darius Boyd", 1, "Full Back")
coach1 = Coach.new(Faker::Sports::Basketball.coach)
coach2 = Coach.new(Faker::Sports::Basketball.coach)
coach3 = Coach.new(Faker::Sports::Basketball.coach)
s1 = Staff.new("James Cook", "Physio")

team1_players = []
team2_players = []
team3_players = []

for i in 1..13
    team1_players.push(Player.new(Faker::Name.name, i, Faker::Sports::Basketball.position))
    team2_players.push(Player.new(Faker::Name.name, i, Faker::Sports::Basketball.position))
    team3_players.push(Player.new(Faker::Name.name, i, Faker::Sports::Basketball.position))
end

team1_staff = []
team2_staff = []
team3_staff = []

for i in 1..3
    team1_staff.push(Staff.new(Faker::Name.name, Faker::Job::position))
    team2_staff.push(Staff.new(Faker::Name.name, Faker::Job::position))
    team3_staff.push(Staff.new(Faker::Name.name, Faker::Job::position))
end


team1 = Team.new("Broncos", "Brisbane", "Lang Park", "Maroon & Orange", team1_players, coach1, team1_staff)
team2 = Team.new("Cowboys", "North QLD", "QLD Country", "Navy & Yellow", team2_players, coach2, team2_staff)
team3 = Team.new("Storm", "Melbourne", "AAMI Park", "Purple", team3_players, coach3, team3_staff)

teams = [team1, team2, team3]

league1 = Leagues.new("NRL", "Rugby League", "The premiere Rugby League tournament", teams)

# puts "#{league1}".green.on_black
# puts league1.print_teams
# puts

# team1_players.each do |player|
#     player
# end
# puts s1
# s1.train
# s1.play

puts

team1.team_info

puts