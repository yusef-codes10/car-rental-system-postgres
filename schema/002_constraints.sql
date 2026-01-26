-- creating the constraints here

-- ! 1- production_year constraint
ALTER TABLE Car
ADD CONSTRAINT production_year_const
CHECK (EXTRACT(YEAR FROM production_year) <= EXTRACT(YEAR FROM CURRENT_DATE));

-- ! 2- hourly rental price should not be 0 or less than 10$
ALTER TABLE Car
ADD CONSTRAINT hourly_price_const
CHECK (hourly_rental_price >= 10.00);
