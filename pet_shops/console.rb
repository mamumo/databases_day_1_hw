require_relative('./models/pet_shop')
require_relative('./models/pet')
require_relative('./db/sql_runner')
require( 'pry-byebug')

runner = SqlRunner.new({dbname:'pet_shop', host:'localhost'})

pet_shop1 = PetShop.new( {'name' => "Maries Mad House of Pets!", 'line1_address' => "The Shore", 'shop_type' => "domestic"}, runner)
pet_shop1.save


# pet_shop2 = PetShop.new( {'name' => "Jims Jumbo Pets!", 'line1_address' => "Unit A", 'shop_type' => "large"}, runner)

pet1 = Pet.new( {'name' => "Fluffy", 'type' => "rabbit", 'pet_shop_id' => pet_shop1.id}, runner)
pet1.save

# pet2 = Pet.new( {'name' => "Maximo", 'type' => "bear", 'pet_shop_id' => pet_shop1.id}, runner)


# pet2.save


# pet_shop2.save


binding.pry
nil