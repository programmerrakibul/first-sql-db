SELECT brand, model, sold, sale_price, sale_date 
FROM sold_cars 
LEFT JOIN cars ON sold_cars.car_id = cars.id;