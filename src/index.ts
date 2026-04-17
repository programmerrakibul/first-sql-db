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

  // Populate tables
  const populateTables = fs.readFileSync("./src/populate-tables.sql", "utf-8");
  await db.exec(populateTables);

  // Read query
  const query = fs.readFileSync("./src/query.sql", "utf-8");

  // CRUD operation query
  await db.exec(query);

  // Read
  const response = await db.query(`SELECT * FROM staff;`);
  const dealerships = response?.rows;

  // Print
  console.clear();
  console.table(dealerships);
})();
