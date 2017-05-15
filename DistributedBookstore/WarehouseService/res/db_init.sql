DROP TABLE IF EXISTS warehouse_orders;
DROP TABLE IF EXISTS users;

CREATE TABLE warehouse_orders (
  id VARCHAR(36) PRIMARY KEY,
  quantity INTEGER NOT NULL,
  book_title VARCHAR(60) NOT NULL,
  client_name VARCHAR(100) NOT NULL,
  client_address VARCHAR(200) NOT NULL,
  client_email VARCHAR(45) NOT NULL,
  state INTEGER NOT NULL,
  state_date BIGINT
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  username VARCHAR(60) NOT NULL UNIQUE,
  password VARCHAR(60) NOT NULL
);

-- DUMMY DATA

INSERT INTO warehouse_orders (id, quantity, book_title, client_name, client_addr, client_email, state)
VALUES ('3c759575-7d2f-495d-93c8-6c3e04418eb0', 10, 'Titulo 1', 'Antonio', 'Rua X1', 'x@x.com', 0);
INSERT INTO warehouse_orders (id, quantity, book_title, client_name, client_addr, client_email, state, state_date)
VALUES ('cfe42f04-71e3-48b1-bb02-ce2b283c0aa9', 15, 'Titulo 2', 'To', 'Rua Y2', 'y@y.com', 1, 20000);

INSERT INTO users (id, username, password) VALUES (1, 'user', '123456');