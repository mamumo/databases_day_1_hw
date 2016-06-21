/** Monday June 20 2016- Homework **/


/** Section 1 **/

/** 1. Select the names of all users.**/
SELECT name FROM "users"; 

/** 2. Select the names of all shows that cost less than £15.**/
SELECT name FROM "shows" WHERE price < 15.00; 

/**3. Insert a user with the name "Val Gibson" into the users table. **/
INSERT INTO "users" (name) VALUES ('Val Gibson'); 

/**4.Insert a record that Val Gibson wants to attend the show "Two girls, one cup of comedy**/
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 19); 

/**5.Updates the name of the "Val Gibson" user to be "Valerie Gibson"**/
UPDATE "users" SET name = 'Valerie Gibson' WHERE name = 'Val Gibson';

/** 6. Deletes the user with the name 'Valerie Gibson'.**/
DELETE FROM "users" WHERE name = 'Valerie Gibson';

/** 7. Deletes the shows for the user you just deleted**/
DELETE FROM "shows_users" WHERE user_id = 19;

/** Section 2 **/

/** 9-Select the names and prices of all shows, ordered by price in ascending order**/
SELECT name FROM "shows" ORDER BY price;

/** 10. Select the average price of all shows.**/

SELECT AVG(price) FROM "shows";

/**11. Select the price of the least expensive show.**/

SELECT MIN(price) FROM "shows";

/**12. Select the sum of the price of all shows.**/

SELECT SUM(price) FROM "shows";

/**13. Select the sum of the price of all shows whose prices is less than £20**/

SELECT SUM(price) FROM "shows" WHERE price < 20.00;

/** 14. Select the name and price of the most expensive show**/

SELECT name, price FROM "shows" WHERE price = (SELECT MAX(price) FROM "shows");

/** 15.Select the name and price of the second from cheapest show.**/

SELECT name ,price FROM "shows" WHERE price > ( SELECT MIN( price ) FROM "shows") AND price < 8.00;

/** 16. Select the names of all users whose names start with the letter "N"**/

SELECT name from "users" WHERE name like 'N%' ORDER BY name;

/** 17. Select the names of users whose names contain "er"**/

SELECT name from "users" WHERE name like '%er%' ORDER BY name;

/** Section 3 **/

/** Select the time for the Edinburgh Royal Tattoo.**/

SELECT "times.time" FROM "times"
INNER JOIN "shows" ON "times.show_id" = "show.id"
WHERE "shows".name = 'Edinburgh Royal Tattoo';



