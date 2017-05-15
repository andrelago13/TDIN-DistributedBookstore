DROP TABLE IF EXISTS store_orders;
CREATE TABLE store_orders (
  id VARCHAR(36) PRIMARY KEY,
  quantity INTEGER NOT NULL,
  book_title VARCHAR(60) NOT NULL,
  client_name VARCHAR(100) NOT NULL,
  client_address VARCHAR(200) NOT NULL,
  client_email VARCHAR(45) NOT NULL,
  state INTEGER NOT NULL,
  state_date BIGINT
);

-- DUMMY DATA

INSERT INTO store_orders (id, quantity, book_title, client_name, client_address, client_email, state)
VALUES ('3c759575-7d2f-495d-93c8-6c3e04418eb0', 10, 'Titulo 1', 'Antonio', 'Rua X1', 'x@x.com', 0);
INSERT INTO store_orders (id, quantity, book_title, client_name, client_address, client_email, state, state_date)
VALUES ('cfe42f04-71e3-48b1-bb02-ce2b283c0aa9', 15, 'Titulo 2', 'To', 'Rua Y2', 'y@y.com', 1, 20000);