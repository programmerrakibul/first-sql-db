-- Insert staff for dealerships 2 & 3

INSERT INTO staff (dealership_id, name, role)
	VALUES
	-- Dealership 2
	(2, 'Tina Torque', 'Salesperson'),
	(2, 'Owen Carr', 'Salesperson'),
	(2, 'Clara Beck', 'Salesperson'),
	(2, 'Mo Motor', 'Mechanic'),

	-- Dealership 3
	(3, 'Sasha Miles', 'Salesperson'),
	(3, 'Bobby Turner', 'Salesperson'),
	(3, 'Cal Mason', 'Salesperson'),
	(3, 'Reggie Ratchet', 'Mechanic');

  -- Insert new records to the cars table

INSERT INTO cars (brand, model, year, price, color, condition, sold, dealership_id)
VALUES
('Volkswagen', 'Beetle', 1967, 30000, 'Black', 5, FALSE, 1),
('Volkswagen', 'Beetle', 1967, 45000, 'Red', 9, TRUE, 2),
('Ford', 'Model T', 1925, 20000, 'Red', 5, FALSE, 2),
('Mercedes-Benz', '300SL', 1954, 20000, 'Green', 4, FALSE, 1),
('Porsche', '356', 1955, 20000, 'Cream', 6, TRUE, 2),
('Aston Martin', 'DB5', 1964, 50000, 'Blue', 8, TRUE, 2),
('AMC', 'Javelin', 1971, 35000, 'Cream', 9, FALSE, 1),
('Fiat', '124 Spider', 1978, 55000, 'Green', 9, TRUE, 1),
('BMW', '2002', 1973, 75000, 'Green', 10, FALSE, 2),
('Volkswagen', 'Beetle', 1967, 75000, 'Grey', 8, FALSE, 3),
('Volkswagen', 'Beetle', 1967, 15000, 'Blue', 4, FALSE, 3),
('AMC', 'Javelin', 1971, 60000, 'Blue', 4, TRUE, 2),
('BMW', '2002', 1973, 45000, 'Black', 8, FALSE, 1),
('Chevrolet', 'Bel Air', 1957, 60000, 'White', 7, FALSE, 3),
('Toyota', '2000GT', 1967, 65000, 'Blue', 5, TRUE, 1),
('Pontiac', 'GTO', 1966, 40000, 'Cream', 5, FALSE, 2),
('Chevrolet', 'Bel Air', 1957, 35000, 'White', 6, TRUE, 2),
('Alfa Romeo', 'Spider', 1974, 60000, 'Blue', 7, FALSE, 3),
('AMC', 'Javelin', 1971, 15000, 'Green', 5, FALSE, 3),
('Fiat', '124 Spider', 1978, 15000, 'Green', 6, TRUE, 1),
('Pontiac', 'GTO', 1966, 45000, 'Red', 10, TRUE, 1),
('Toyota', '2000GT', 1967, 75000, 'Red', 9, TRUE, 1),
('Lincoln', 'Continental', 1965, 55000, 'White', 6, TRUE, 2),
('Alfa Romeo', 'Spider', 1974, 25000, 'Black', 5, TRUE, 3),
('Ferrari', '250 GTO', 1962, 35000, 'White', 7, FALSE, 2),
('AMC', 'Javelin', 1971, 20000, 'Grey', 6, TRUE, 2),
('Volkswagen', 'Beetle', 1967, 30000, 'Green', 10, FALSE, 1),
('Pontiac', 'GTO', 1966, 15000, 'Cream', 7, FALSE, 1),
('Toyota', '2000GT', 1967, 70000, 'Black', 10, FALSE, 2),
('AMC', 'Javelin', 1971, 15000, 'Blue', 9, TRUE, 2);


INSERT INTO sold_cars (car_id, dealership_id, seller, sale_date, sale_price) VALUES
(1, 1, 'John Doe', '2022-01-01', 25000),
(7, 2, 'Jane Doe', '2022-02-01', 30000),
(3, 2, 'Bob Smith', '2022-03-01', 35000), 
(4, 2, 'Alice Johnson', '2022-04-01', 40000);
