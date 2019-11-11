CREATE TABLE Messages (
  id SERIAL PRIMARY KEY,
  time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  text VARCHAR(255),
  from_id int,
  to_id int,
  FOREIGN KEY (from_id) REFERENCES users(id),
  FOREIGN KEY (to_id) REFERENCES users(id)
);