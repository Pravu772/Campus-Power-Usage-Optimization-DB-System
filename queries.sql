-- SELECT

-- 1. List all building names and their locations.
SELECT name, location FROM Buildings;

-- 2. Show all departments with their department_id.
SELECT department_id, name FROM Departments;

-- 3. List all device names and their power ratings.
SELECT device_name, power_rating_kw FROM Devices;

-- BASIC JOINS

-- 4. Show each department and the building it's in.
SELECT d.name AS Department, b.name AS Building
FROM Departments d
JOIN Buildings b ON d.building_id = b.building_id;

-- 5. List device names along with room number.
SELECT dv.device_name, r.room_number
FROM Devices dv
JOIN Rooms r ON dv.room_id = r.room_id;

-- 6. Show all users and their department names.
SELECT u.name, u.role, d.name AS department
FROM Users u
JOIN Departments d ON u.department_id = d.department_id;

-- AGGREGATE FUNCTION

-- 7. Count number of rooms per department.
SELECT department_id, COUNT(*) AS total_rooms
FROM Rooms
GROUP BY department_id;

-- 8. Find total power usage for each device.
SELECT device_id, SUM(power_used_kwh) AS total_kwh
FROM PowerUsageLogs
GROUP BY device_id;

-- 9. Find average power rating of all devices.
SELECT AVG(power_rating_kw) AS avg_rating
FROM Devices;

-- SORTING AND GROUPING

-- 10. List devices ordered by install date (oldest first).
SELECT device_name, install_date
FROM Devices
ORDER BY install_date;

-- 11. Group power usage logs by device and order by total usage descending.
SELECT device_id, SUM(power_used_kwh) AS total_kwh
FROM PowerUsageLogs    
GROUP BY device_id
ORDER BY total_kwh DESC;

-- 12.Count users by role.
SELECT role, COUNT(*) AS count
FROM Users
GROUP BY role;

-- SUBQUERIES

-- 13.List users who have handled maintenance.
SELECT name
FROM Users
WHERE user_id IN (
    SELECT fixed_by FROM MaintenanceLogs
);

-- 14. Get device(s) that consumed the most energy.
SELECT device_id
FROM PowerUsageLogs
GROUP BY device_id
HAVING SUM(power_used_kwh) = (
    SELECT MAX(total)
    FROM (
        SELECT SUM(power_used_kwh) AS total
        FROM PowerUsageLogs
        GROUP BY device_id
    ) AS totals
);

-- 15. List rooms where power usage exceeded threshold.
SELECT room_id
FROM Thresholds
WHERE max_power_kwh < (
    SELECT SUM(power_used_kwh)
    FROM PowerUsageLogs pul
    JOIN Devices d ON pul.device_id = d.device_id
    WHERE d.room_id = Thresholds.room_id
);

-- ADVANCED JOIN

-- 16. List devices, their room number and department.
SELECT dv.device_name, r.room_number, d.name AS department
FROM Devices dv
JOIN Rooms r ON dv.room_id = r.room_id
JOIN Departments d ON r.department_id = d.department_id;

-- 17. List maintenance logs with device name and fixed by user.
SELECT m.issue_reported, dv.device_name, u.name AS fixed_by
FROM MaintenanceLogs m
JOIN Devices dv ON m.device_id = dv.device_id
JOIN Users u ON m.fixed_by = u.user_id;

-- 18. List each optimization action with device and performer.
SELECT o.action_description, dv.device_name, u.name AS performed_by
FROM OptimizationActions o
JOIN Devices dv ON o.device_id = dv.device_id
JOIN Users u ON o.performed_by = u.user_id;

