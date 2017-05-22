DROP TABLE IF EXISTS warehouse_orders;

CREATE TABLE warehouse_orders (
  id             VARCHAR(40) PRIMARY KEY,
  quantity       INTEGER      NOT NULL,
  book_id        INTEGER      NOT NULL REFERENCES books (id),
  state          INTEGER      NOT NULL,
  order_date     DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_at     DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  dispatch_date  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- DUMMY DATA

INSERT INTO warehouse_orders (id, quantity, book_id, state)
VALUES ('3c759575-7d2f-495d-93c8-6c3e04418eb0', 10, 1, 0);
INSERT INTO warehouse_orders (id, quantity, book_id, state, order_date)
VALUES ('cfe42f04-71e3-48b1-bb02-ce2b283c0aa9', 15, 2, 2, CURRENT_TIMESTAMP);