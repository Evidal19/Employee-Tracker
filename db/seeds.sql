INSERT INTO employee
  (first_name, last_name, role_id, manager_id)

  VALUES
  ('Charlotte', 'Razo', 1, 1),
  ('Scarlet', 'Walpole', 2,2),
  ('Matthew', 'Lewis', 3, null),
  ('William', 'Padilla', 4, 3),
  ('Anne', 'Vidal',5, null);

INSERT INTO roles
  (title, salary, department_id)
  
  VALUES
 ('Salesperson', 20000,2),
  ('Engineer',200000, 3),
  ('Accountant',180000,1),
  ('Manager',210000,1),
  ('Frontend Engineer',198000,3);
  
INSERT INTO department (name)
VALUES
('Finance'),
('Sales'),
('Engineer')