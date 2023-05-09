CREATE DATABASE IF NOT EXISTS lease_tech;
USE lease_tech;

DROP TABLE IF EXISTS TBL_Task;
DROP TABLE IF EXISTS TBL_Status;
CREATE TABLE TBL_Status (
  cd_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nb_name varchar(50) NOT NULL
);
CREATE TABLE TBL_Task(
  cd_id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nb_name varchar(50) NOT NULL,
  cd_status INTEGER NOT NULL
);

INSERT INTO TBL_Status(nb_name) VALUES  ('Completada'),  ('Pendiente');

INSERT INTO TBL_Task(nb_name,  cd_status) VALUES  ('From workbench', 1);
