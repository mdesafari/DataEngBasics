-- the script should be on only 1 line
\COPY companies(id, name, country) FROM 'C:/Users/Adombi/Documents/AvadDocuments/003-MyProjects/001-Poste2Prof/008-Organisation/011-DataEng/002-PostgreSQL/data/companies.csv' DELIMITER ',' CSV HEADER;
\COPY employees(id, first_name, last_name, email, gender, date_birth, company_id) FROM 'C:/Users/Adombi/Documents/AvadDocuments/003-MyProjects/001-Poste2Prof/008-Organisation/011-DataEng/002-PostgreSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
