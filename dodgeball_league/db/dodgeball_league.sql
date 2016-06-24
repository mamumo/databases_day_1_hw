DROP TABLE matches;
DROP TABLE teams;

CREATE TABLE teams (
  id serial4 primary key,
  name varchar(255) not null
);

CREATE TABLE matches (
  id serial4 primary key,
  home_team_id INT4 references teams(id),
  away_team_id INT4 references teams(id),
  home_team_score INT2,
  away_team_score INT2
);