-- creating the constraints here

-- ! 1- production_year constraint
ALTER TABLE Car
ADD CONSTRAINT production_year_const
CHECK (EXTRACT(YEAR FROM production_year) <= EXTRACT(YEAR FROM NOW()));
