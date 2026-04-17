INSERT INTO dealerships (city, state, established) VALUES 
          ('New York', 'NY', '1950-05-15'),
          ('Los Angeles', 'CA', '1960-08-20'),
          ('Chicago', 'IL', '1975-03-10'),
          ('San Jose', 'CA', '2000-06-10');

INSERT INTO staff (dealership_id, name, role) VALUES 
          (1, 'John Doe', 'Salesman'),
          (1, 'Jane Doe', 'Salesman'),
          (1, 'Bob Smith', 'Manager'),
          (1, 'Alice Johnson', 'Manager'),
          (2, 'Jane Smith', 'Salesman'),
          (2, 'Bob Johnson', 'Salesman'),
          (2, 'Alice Brown', 'Manager'),
          (2, 'John Miller', 'Manager'),
          (3, 'Jane Miller', 'Salesman');