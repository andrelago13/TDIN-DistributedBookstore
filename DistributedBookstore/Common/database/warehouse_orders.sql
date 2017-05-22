DROP TABLE IF EXISTS warehouse_orders;

CREATE TABLE warehouse_orders (
  id            VARCHAR(40) PRIMARY KEY,
  quantity      INTEGER  NOT NULL,
  book_id       INTEGER  NOT NULL,
  state         INTEGER  NOT NULL,
  order_date    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  created_at    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  dispatch_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO warehouse_orders (id, quantity, book_id, state)
VALUES ('220802ab-7bee-4e33-a9a0-585ccfbf96be', 22, 12, 0);
INSERT INTO warehouse_orders (id, quantity, book_id, state)
VALUES ('a7ccf544-5b28-4996-80d6-d9225cd093b7', 30, 19, 0);
INSERT INTO warehouse_orders (id, quantity, book_id, state, order_date)
VALUES ('34c2b6e4-f996-4aab-9007-54b12fa239cc', 32, 19, 2, CURRENT_TIMESTAMP);