DROP TABLE IF EXISTS warehouse_orders;
DROP TABLE IF EXISTS users;

CREATE TABLE warehouse_orders (
  id             VARCHAR(40) PRIMARY KEY,
  quantity       INTEGER      NOT NULL,
  book_id        INTEGER      NOT NULL REFERENCES books (id),
  client_name    VARCHAR(100) NOT NULL,
  client_address VARCHAR(200) NOT NULL,
  client_email   VARCHAR(45)  NOT NULL,
  state          INTEGER      NOT NULL,
  state_date     DATETIME,
  created_at     DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
  id       INTEGER PRIMARY KEY,
  username VARCHAR(60) NOT NULL UNIQUE,
  password VARCHAR(60) NOT NULL
);

-- DUMMY DATA

INSERT INTO warehouse_orders (id, quantity, book_id, client_name, client_address, client_email, state)
VALUES ('3c759575-7d2f-495d-93c8-6c3e04418eb0', 10, 1, 'Antonio', 'Rua X1', 'x@x.com', 0);
INSERT INTO warehouse_orders (id, quantity, book_id, client_name, client_address, client_email, state, state_date)
VALUES ('cfe42f04-71e3-48b1-bb02-ce2b283c0aa9', 15, 2, 'To', 'Rua Y2', 'y@y.com', 1, CURRENT_TIMESTAMP);

INSERT INTO users (id, username, password) VALUES (1, 'USER', '123456');