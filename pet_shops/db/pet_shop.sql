DROP TABLE pets;
DROP TABLE pet_shops;

CREATE TABLE pet_shops (
  id serial4 primary key,
  name VARCHAR(255),
  line1_address VARCHAR(255),
  shop_type VARCHAR(255)
);

CREATE TABLE pets (
  id serial4 primary key,
  name VARCHAR(255),
  type VARCHAR(255),
  pet_shop_id int4 references pet_shops(id)
);