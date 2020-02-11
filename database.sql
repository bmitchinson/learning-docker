-- // database.sql

-- // creates a table `tasks`
CREATE TABLE IF NOT EXISTS tasks (

task_id INT AUTO_INCREMENT,

title VARCHAR(255) NOT NULL,

start_date DATE,

due_date DATE,

status TINYINT NOT NULL,

priority TINYINT NOT NULL,

description TEXT,

PRIMARY KEY (task_id)

);
-- // add more tables below and indeces etc as our solution grows