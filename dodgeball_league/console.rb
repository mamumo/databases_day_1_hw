require_relative( 'db/sql_runner' )
require_relative( 'models/match' )
require_relative( 'models/team' )

require( 'pry-byebug' )


runner = SqlRunner.new({dbname: 'dodgeball_league', host: 'localhost'})

Team.delete_all(runner)
Match.delete_all(runner)

team1 = Team.new( {'name' => "Edinburgh Dodgers"}, runner )
team1.save()
t1 = team1.save()

team2 = Team.new( {'name' => "Edinburgh Hitters"}, runner )
team2.save
t2 = team2.save()

team3 = Team.new( {'name' => "Glasgow Bruisers"}, runner )
team3.save
t3 = team3.save

team4 = Team.new( {'name' => "Dundee Deckers"}, runner )
team4.save
t4 = team4.save



match1 = Match.new( {'home_team_id' => t1.id, 'away_team_id' => t2.id, 'home_team_score' => 2, 'away_team_score' => 3}, runner)
match1.save()
m1 = match1.save()

match2 = Match.new( {'home_team_id' => t3.id, 'away_team_id' => t4.id, 'home_team_score' => 5, 'away_team_score' => 4}, runner)
match2.save()
m2 = match2.save()

match3 = Match.new( {'home_team_id' => t2.id, 'away_team_id' => t3.id, 'home_team_score' => 4, 'away_team_score' => 4}, runner)
match3.save()
m3 = match3.save()


binding.pry
nil