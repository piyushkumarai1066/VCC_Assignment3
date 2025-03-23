
CREATE TABLE scaling_events (
    id SERIAL PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action VARCHAR(10),
    instance_id VARCHAR(50)
);
  