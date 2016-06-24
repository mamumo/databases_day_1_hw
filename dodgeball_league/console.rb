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

match1 = Match.new( {'home_team_id' => team1.id, 'away_team_id' => team2.id, 'home_team_score' => 2, 'away_team_score' => 3}, runner)
match1.save()
m1 = match1.save()



# album1 = Album.new( { 'name' => 'Definitely Maybe', 'artist_id' => artist.id }, runner )
# album2 = Album.new( { 'name' => 'Whats the Story', 'artist_id' => artist.id}, runner )

# album1.save()
# album2.save()

binding.pry
nil