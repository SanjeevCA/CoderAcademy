require "colorize"

require_relative "./team.rb"
require_relative "./league.rb"
require_relative "./team_member.rb"
require_relative "./player.rb"
require_relative "./coach.rb"

team1 = Team.new("Broncos", "Brisbane", "Lang Park", "Maroon & Orange", [], "Kevin Walters", [])
team2 = Team.new("Cowboys", "North QLD", "QLD Country", "Navy & Yellow", [], "Todd Payten", [])
team3 = Team.new("Storm", "Melbourne", "AAMI Park", "Purple", [], "Craig Bellamy", [])

teams = [team1, team2, team3]

league1 = Leagues.new("NRL", "Rugby League", "The premiere Rugby League tournament", teams)

puts "#{league1}".green.on_black
puts league1.print_teams

tm1 = Team_Member.new("Payne Haas")
tm1.train
tm1.play

player1 = Player.new("Darius Boyd", 1, "Full Back")
puts player1
player1.train

coach1 = Coach.new("Wayne Bennet")
puts coach1