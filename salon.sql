DROP DATABASE salon;
CREATE DATABASE salon;
\connect salon
CREATE TABLE customers(
  customer_id serial PRIMARY KEY,
  phone varchar(20) UNIQUE,
  name varchar(20)
);
CREATE TABLE services(
  service_id serial PRIMARY KEY,
  name varchar(20)
);

CREATE TABLE appointments(
  appointment_id serial PRIMARY KEY,
  time varchar(20),
  customer_id int REFERENCES customers(customer_id),
  service_id int REFERENCES services(service_id)
);
INSERT INTO services (
  name
)
VALUES
  ('cut'),
  ('cut'),
  ('color');

ALTER DATABASE salon OWNER TO freecodecamp;
GRANT ALL PRIVILEGES ON TABLE customers TO freecodecamp;
GRANT ALL PRIVILEGES ON TABLE services TO freecodecamp;
GRANT ALL PRIVILEGES ON TABLE appointments TO freecodecamp;
GRANT USAGE, SELECT ON SEQUENCE customers_customer_id_seq TO freecodecamp;
GRANT USAGE, SELECT ON SEQUENCE services_service_id_seq TO freecodecamp;
GRANT USAGE, SELECT ON SEQUENCE appointments_appointment_id_seq TO freecodecamp;
