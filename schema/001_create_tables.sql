CREATE TABLE Car (
    id BIGSERIAL PRIMARY KEY,
    model VARCHAR(30),
    make VARCHAR(30),
    production_year DATE,
    availability VARCHAR(10),
    hourly_rental_price NUMERIC(10,2)
);

CREATE TABLE Customer (

);