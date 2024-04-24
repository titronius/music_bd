CREATE TABLE coworkers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    department INTEGER NOT NULL,
    manager INTEGER REFERENCES coworkers(id)
);