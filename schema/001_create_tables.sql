CREATE TABLE Car (
    id BIGSERIAL PRIMARY KEY,
    model VARCHAR(30),
    make VARCHAR(30),
    production_year DATE,
    availability VARCHAR(10),
    hourly_rental_price NUMERIC(10,2)
);

CREATE TABLE Customer (
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40), 
    email VARCHAR(40) UNIQUE,
    phone_number VARCHAR(40) UNIQUE,
    date_of_birth DATE
);

CREATE TABLE Rental (
    car_id BIGINT,
    costumer_id BIGINT,

    start_date DATE,
    end_date Date,
    return_date DATE,
    price NUMERIC(12, 2)
);