require('pry-byebug')
require ('pg')

class Team
  attr_reader(:id, :name)

  def initialize(options, runner)
    @id = options['id'].to_i
    @name = options['name']
    @runner = runner
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING *"
    artist_data = @runner.run(sql)
    @id = artist_data.first['id'].to_i
  end
end