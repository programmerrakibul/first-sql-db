import { PGlite } from "@electric-sql/pglite";
import fs from "fs";

import type { TCar } from "./types/index.js";

(async () => {
  // Connect to the database
  const db = new PGlite();

  // Create tables and insert data
  const createTables = fs.readFileSync("./src/create-tables.sql", "utf-8");
  const carsData = fs.readFileSync("./src/insert-cars-data.sql", "utf-8");
  await db.exec(createTables);
  await db.exec(carsData);

  // Read query
  const query = fs.readFileSync("./src/query.sql", "utf-8");

  // CRUD operation query
  await db.exec(query);

  // Read
  const response = await db.query<TCar>(`SELECT * FROM cars;`);
  const cars = response?.rows;

  // Print
  console.clear();
  console.table(cars);
})();
