-- INSERTING DATA

INSERT INTO Buildings VALUES
(1, 'Admin Block', 'North Campus'),
(2, 'Science Block', 'East Campus'),
(3, 'Library', 'West Campus'),
(4, 'Hostel', 'South Campus'),
(5, 'Food Court', 'Central Campus'),
(6, 'IT Block', 'North Campus'),
(7, 'Workshop', 'Industrial Area'),
(8, 'Auditorium', 'East Campus');

INSERT INTO Departments VALUES
(1, 'Artificial Intelligence and Data Science Enginerring', 2),
(2, 'Computer Science Engineering', 2),
(3, 'Mechanical', 7),
(4, 'Civil', 7),
(5, 'Library Services', 3),
(6, 'IT', 6),
(7, 'Food Technology', 5),
(8, 'Admin Office', 1);

INSERT INTO Rooms VALUES
(1, 'AI101', 1),
(2, 'CS201', 2),
(3, 'ME301', 3),
(4, 'CE101', 4),
(5, 'LIB01', 5),
(6, 'FT01', 7),
(7, 'ITLAB', 6),
(8, 'AD01', 8);

INSERT INTO Devices VALUES
(1, 'Dell PC', 'Computer', 1, 0.5, '2022-05-01'),
(2, 'LED Light', 'Light', 1, 0.1, '2022-06-15'),
(3, 'Projector', 'Display', 2, 0.3, '2021-09-10'),
(4, 'AC Unit', 'AC', 2, 1.5, '2021-03-20'),
(5, 'Water Cooler', 'Appliance', 6, 0.8, '2023-01-01'),
(6, 'Router', 'Network', 7, 0.2, '2023-02-01'),
(7, 'Ceiling Fan', 'Fan', 3, 0.075, '2022-11-11'),
(8, 'Smart Board', 'Display', 8, 0.6, '2024-04-01');

INSERT INTO PowerUsageLogs VALUES
(1, 1, '2025-06-18', '09:00', 0.3),
(2, 1, '2025-06-18', '10:00', 0.25),
(3, 2, '2025-06-18', '09:00', 0.05),
(4, 3, '2025-06-18', '11:00', 0.2),
(5, 4, '2025-06-18', '11:30', 1.1),
(6, 5, '2025-06-18', '12:00', 0.7),
(7, 6, '2025-06-18', '01:00', 0.15),
(8, 7, '2025-06-18', '02:00', 0.05);

INSERT INTO PowerSources VALUES
(1, 'Solar', 50.0),
(2, 'Grid', 200.0),
(3, 'Generator', 100.0),
(4, 'UPS Backup', 25.0),
(5, 'Battery Bank', 10.0),
(6, 'Wind Turbine', 80.0),
(7, 'Hydro Backup', 150.0),
(8, 'Geothermal', 60.0);

INSERT INTO Users VALUES
(1, 'Ravi Kumar', 'Technician', 1),
(2, 'Sita Rani', 'Admin', 2),
(3, 'Anil Mehta', 'Technician', 3),
(4, 'Pooja Sinha', 'Technician', 4),
(5, 'Nisha Patel', 'Admin', 5),
(6, 'Karan Joshi', 'Technician', 6),
(7, 'Divya Rao', 'Manager', 7),
(8, 'Arjun Nair', 'Admin', 8);

INSERT INTO Thresholds VALUES
(1, 1, 1.0, 'Medium'),
(2, 2, 2.5, 'High'),
(3, 3, 1.2, 'Low'),
(4, 4, 1.8, 'Medium'),
(5, 5, 0.8, 'Medium'),
(6, 6, 1.0, 'High'),
(7, 7, 0.5, 'Low'),
(8, 8, 1.5, 'High');

INSERT INTO MaintenanceLogs VALUES
(1, 1, '2025-06-10', 'Booting issue', 1),
(2, 2, '2025-06-11', 'Light flickering', 2),
(3, 3, '2025-06-12', 'Lens blur', 3),
(4, 4, '2025-06-13', 'Cooling issue', 4),
(5, 5, '2025-06-14', 'Water leak', 5),
(6, 6, '2025-06-15', 'Connectivity loss', 6),
(7, 7, '2025-06-16', 'No rotation', 7),
(8, 8, '2025-06-17', 'Touch error', 8);

INSERT INTO OptimizationActions VALUES
(1, 1, 'Upgraded to SSD', '2025-06-12', 1),
(2, 2, 'Replaced with LED', '2025-06-13', 2),
(3, 3, 'Cleaned lens', '2025-06-14', 3),
(4, 4, 'Serviced AC filter', '2025-06-15', 4),
(5, 5, 'Changed motor', '2025-06-16', 5),
(6, 6, 'Replaced cable', '2025-06-17', 6),
(7, 7, 'Oiled motor', '2025-06-18', 7),
(8, 8, 'Firmware update', '2025-06-19', 8);