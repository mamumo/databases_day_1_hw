require('pg')
require( 'pry-byebug')

class PetShop
  attr_reader(:name, :id, :line1_address, :shop_type)
  def initialize ( options, runner)
    @id = options['id'].to_i
    @name = options['name']
    @line1_address = options['line1_address']
    @shop_type = options['shop_type']
    @runner = runner

  end

  def save()
    sql = "INSERT INTO pet_shops (
    name, 
    line1_address,
    shop_type)
    VALUES(
    '#{@name}',
    '#{@line1_address}',
    '#{@shop_type}'
    ) RETURNING *;"
    pet_shop_data = @runner.run( sql )
    @id = pet_shop_data.first['id'].to_i
  end

  def self.all(runner)
    sql = "SELECT * FROM pet_shops"
    pet_shops = @runner.run( sql )
    all_pet_shops = pet_shops.map {|pet_shop| PetShop.new( pet_shop, runner ) }
    return all_pet_shops

      
    end



end