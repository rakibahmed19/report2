CREATE DATABASE organization;

USE organization;

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    full_name VARCHAR(30),
    team_id INT
);

CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(30)
);

INSERT INTO staff (staff_id, full_name, team_id) VALUES
(1, 'John Doe', 5),
(2, 'Jane Smith', 6),
(3, 'Alice Johnson', 7),
(4, 'Bob Brown', 8),
(5, 'Charlie Davis', 9);

INSERT INTO teams (team_id, team_name) VALUES
(1, 'Development'),
(2, 'Marketing'),
(3, 'Operations');

SELECT * FROM staff NATURAL JOIN teams;

SELECT * FROM staff INNER JOIN teams ON staff.team_id = teams.team_id;

SELECT * FROM staff LEFT JOIN teams ON staff.team_id = teams.team_id;

SELECT * FROM staff RIGHT JOIN teams ON staff.team_id = teams.team_id;