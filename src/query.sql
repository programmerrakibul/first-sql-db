-- Inserting data
INSERT INTO cars 
(brand, model, year, price, color, condition, sold) VALUES
('Toyota', 'Camry', 2018, 25000, 'Blue', 4, false);

-- Updating data
UPDATE cars SET
  sold = true
  WHERE color = 'Blue'
  AND brand = 'Toyota'
  AND model = 'Camry';

