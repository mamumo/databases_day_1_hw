require( 'pg' )
require( 'pry-byebug')

class Pet
  attr_reader(:name, :id, :type, :pet_shop_id)
  def initialize( options, runner )
    @name = options['name']
    @id = options['id'].to_i
    @type = options['type']
    @pet_shop_id = options['pet_shop_id'].to_i
    @runner = runner
  end

  def save()
    sql = "INSERT INTO pets (
    name, 
    type,
    pet_shop_id)
    VALUES(
    '#{@name}',
    '#{@type}',
    '#{@pet_shop_id}'
    ) RETURNING *"
    pet_data = @runner.run( sql )
    @id = pet_data.first['id'].to_i
  end

  def self.all(runner)
    sql = "SELECT * FROM pets"
    pets = @runner.run( sql )
    all_pets = pets.map {|pet| Pets.new( pet, runner ) }
    return all_pets
  end


end