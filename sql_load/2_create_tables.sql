
-- Create City table with primary key..

CREATE TABLE public.city
(
    city_id INT primary key,
    city_name TEXT ,
    population bigint,
    estimated_rent INT,
    city_rank INT
);


-- Create Customer table with primary key..

CREATE TABLE public.customers
(
    customer_id INT primary key,
    customer_name varchar(255),
    city_id INT ,
    FOREIGN KEY(city_id) REFERENCES public.city(city_id)
);


-- Create products table with primary key..

CREATE TABLE public.products
(
    product_id INT primary key,
    product_name TEXT,
    price INT
);

-- Create Sales table with primary key..

CREATE TABLE public.sales
(
    sale_id INT primary key,
    sale_date DATE,
    product_id INT,
    customer_id INT,
    total INT,
    rating INT,
    FOREIGN KEY(product_id) REFERENCES public.products(product_id),
    FOREIGN KEY(customer_id) REFERENCES public.customers(customer_id)
);


-- Set ownership of the tables to the postgres user
ALTER TABLE public.city OWNER to postgres;
ALTER TABLE public.customers OWNER to postgres;
ALTER TABLE public.products OWNER to postgres;
ALTER TABLE public.sales OWNER to postgres;





