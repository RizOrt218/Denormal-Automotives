DROP DATABASE IF EXISTS normal_cars;
DROP USER IF EXISTS normal_user;
-- Create a new postgres user named normal_user
CREATE USER normal_user;

-- Create a new database named normal_cars owned by normal_user
CREATE DATABASE normal_cars;
ALTER DATABASE normal_cars OWNER TO normal_user;

-- Whiteboard your solution to normalizing the denormal_cars schema.

-- [bonus] Generate a diagram (somehow) in .png (or other) format, that of your normalized cars schema. (save and commit to this repo)
-- In normalized.sql Create a query to generate the tables needed to accomplish your normalized schema, including any primary and foreign key constraints. Logical renaming of columns is allowed.
\c normal_cars;
\i scripts/denormal_data.sql;

-- Using the resources that you now possess, In normal.sql Create queries to insert all of the data that was in the denormal_cars.car_models table, into the new normalized tables of the normal_cars database.
-- In normal.sql Create a query to get a list of all make_title values in the car_models table. (should have 71 results)

SELECT DISTINCT make_code, make_title
FROM car_models ORDER BY make_title ASC;

-- In normal.sql Create a query to list all model_title values where the make_code is 'VOLKS' (should have 27 results)

SELECT DISTINCT model_title FROM car_models
WHERE make_code= 'VOLKS';

-- In normal.sql Create a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM' (should have 136 rows)


-- In normal.sql Create a query to list all fields from all car_models in years between 2010 and 2015 (should have 7884 rows)

SELECT DISTINCT * FROM car_models
WHERE year BETWEEN 2010 AND 2015;