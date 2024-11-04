-- create `companies` table
CREATE TABLE IF NOT EXISTS companies(
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    country VARCHAR(100)
);

-- create `employees` table
CREATE TABLE IF NOT EXISTS employees(
    id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    date_birth DATE NOT NULL,
    company_id BIGINT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES companies(id)
);

