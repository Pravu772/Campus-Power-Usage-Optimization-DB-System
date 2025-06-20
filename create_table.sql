-- Buildings
CREATE TABLE Buildings ( 
    building_id INTEGER PRIMARY KEY,
    name TEXT,
    location TEXT
);

-- Departments

CREATE TABLE Departments (
    department_id INTEGER PRIMARY KEY,
    name TEXT,
    building_id INTEGER,
    FOREIGN KEY (building_id) REFERENCES Buildings(building_id)
);

-- Rooms

CREATE TABLE Rooms (
    room_id INTEGER PRIMARY KEY,
    room_number TEXT,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Devices

CREATE TABLE Devices (
    device_id INTEGER PRIMARY KEY,
    device_name TEXT,
    type TEXT,
    room_id INTEGER,
    power_rating_kw REAL,
    install_date TEXT,
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

-- Power usage Logs

CREATE TABLE PowerUsageLogs (
    log_id INTEGER PRIMARY KEY,
    device_id INTEGER,
    usage_date TEXT,
    usage_hour TEXT,
    power_used_kwh REAL,
    FOREIGN KEY (device_id) REFERENCES Devices(device_id)
);

-- Power Sources

CREATE TABLE PowerSources (
    source_id INTEGER PRIMARY KEY,
    source_type TEXT,
    capacity_kw REAL
);

-- Users

CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY,
    name TEXT,
    role TEXT,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Thresholds

CREATE TABLE Thresholds (
    threshold_id INTEGER PRIMARY KEY,
    room_id INTEGER,
    max_power_kwh REAL,
    alert_level TEXT,
    FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

-- Maintenance Logs

CREATE TABLE MaintenanceLogs (
    log_id INTEGER PRIMARY KEY,
    device_id INTEGER,
    date TEXT,
    issue_reported TEXT,
    fixed_by INTEGER,
    FOREIGN KEY (device_id) REFERENCES Devices(device_id),
    FOREIGN KEY (fixed_by) REFERENCES Users(user_id)
);

-- Optimization Actions

CREATE TABLE OptimizationActions (
    action_id INTEGER PRIMARY KEY,
    device_id INTEGER,
    action_description TEXT,
    action_date TEXT,
    performed_by INTEGER,
    FOREIGN KEY (device_id) REFERENCES Devices(device_id),
    FOREIGN KEY (performed_by) REFERENCES Users(user_id)
);