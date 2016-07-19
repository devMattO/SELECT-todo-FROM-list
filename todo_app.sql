-- 1

DROP user IF EXISTS michael;

-- 2 Write a query to create a user named michael with an encrypted password stonebreaker

CREATE USER michael WITH ENCRYPTED PASSWORD 'stonebreaker';

-- 3

DROP DATABASE IF EXISTS todo_app;

-- 4

CREATE DATABASE todo_app;

-- 5

\c todo_app;

-- 6 & 7

CREATE TABLE tasks (
    id serial PRIMARY KEY
);

-- 8

ALTER TABLE tasks
      DROP COLUMN completed RESTRICT,
      ADD COLUMN completed_at timestamp null;




SELECT * FROM tasks;
\d+ tasks;

\c MatthewOlsen;