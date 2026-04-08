SELECT brand, model, condition, price FROM cars
	WHERE (price < 250000
  OR brand = 'Porsche')
  AND condition > 3