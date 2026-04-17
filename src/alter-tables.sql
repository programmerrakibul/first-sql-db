--  1. Add a new column to the cars table to establish a relationship with the dealerships table
ALTER TABLE cars
ADD dealership_id INTEGER;

--  2. Update the cars table to set the dealership_id for existing records (assuming all cars belong to the first dealership for simplicity)
UPDATE cars SET
  dealership_id = 1
WHERE dealership_id IS NULL;

-- 3. Alter the dealership_id column to set it as NOT NULL to enforce the relationship
ALTER TABLE cars
ALTER COLUMN dealership_id SET NOT NULL;

-- 4. Add a foreign key constraint to enforce the relationship between cars and dealerships
ALTER TABLE cars
ADD CONSTRAINT dealership_fk FOREIGN KEY (dealership_id) REFERENCES dealerships(id);

