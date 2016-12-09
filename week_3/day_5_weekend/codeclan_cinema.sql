DROP TABLE IF EXISTS Tickets;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Films;

CREATE TABLE Customers (
  id SERIAL4 primary key,
  name VARCHAR(255),
  funds INT4,
  tickets_bought INT4
);

CREATE TABLE Films (
  id SERIAL4 primary key,
  title VARCHAR(255),
  price INT4,
  audience_size INT4,
  start_time INT4
);

CREATE TABLE Tickets (
  id SERIAL4 primary key,
  cus_id SERIAL4 references Customers(id) ON DELETE CASCADE,
  film_id SERIAL4 references Films(id) ON DELETE CASCADE
);