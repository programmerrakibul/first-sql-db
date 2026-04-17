import { PGlite } from "@electric-sql/pglite";
import fs from "fs";

(async () => {
  // Connect to the database
  const db = new PGlite();

  // Create tables and insert data
  const createTables = fs.readFileSync("./src/create-tables.sql", "utf-8");
  const carsData = fs.readFileSync("./src/insert-cars-data.sql", "utf-8");
  await db.exec(createTables);
  await db.exec(carsData);

  // Create CRUD operations
  const crudOperations = fs.readFileSync("./src/crud-operations.sql", "utf-8");
  await db.exec(crudOperations);

  // Populate tables
  const populateTables = fs.readFileSync("./src/populate-tables.sql", "utf-8");
  await db.exec(populateTables);

  // Alter tables
  const alterTables = fs.readFileSync("./src/alter-tables.sql", "utf-8");
  await db.exec(alterTables);

  // Insert new data
  const insertNewData = fs.readFileSync("./src/insert-new-data.sql", "utf-8");
  await db.exec(insertNewData);

  // Read query
  const query = fs.readFileSync("./src/query.sql", "utf-8");

  // Read
  const response = await db.query(query);
  const dealerships = response?.rows;

  // Print
  console.clear();
  console.table(dealerships);
})();
