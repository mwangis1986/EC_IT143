/*
EC_IT143_W4.2_hello_world_s5.2_SM.sql
*/

DROP TABLE IF EXISTS t_hello_world;
CREATE TABLE t_hello_world
(
greeting_id INT IDENTITY(1,1) PRIMARY KEY,
Greeting VARCHAR(50) NOT NULL
);