CREATE TABLE department (
  name VARCHAR(30),
  id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE roles (
  title VARCHAR(30),
  id INT AUTO_INCREMENT PRIMARY KEY,
  salary DECIMAL,
  department_id INT
);

CREATE TABLE employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INT,
  manager_id INT
);