DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS users;

CREATE TABLE orders (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  quantity INTEGER NOT NULL,
  book_title VARCHAR(60) NOT NULL,
  client_name VARCHAR(100) NOT NULL,
  client_addr VARCHAR(200) NOT NULL,
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

INSERT INTO orders (quantity, book_title, client_name, client_addr, client_email, state)
VALUES (10, 'Titulo 1', 'Antonio', 'Rua X1', 'x@x.com', 0);
INSERT INTO orders (quantity, book_title, client_name, client_addr, client_email, state, state_date)
VALUES (15, 'Titulo 2', 'To', 'Rua Y2', 'y@y.com', 1, 20000);

INSERT INTO users (id, username, password) VALUES (1, 'user', '123456');