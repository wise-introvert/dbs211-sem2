-- ***********************
-- Name: Your Name
-- ID: #########
-- Date: The current date
-- Purpose: Lab 05 DBS211
-- ***********************

-- Q1 SOLUTION --
--      A      --
CREATE TABLE L5_MOVIES (
  m_id NUMBER PRIMARY KEY,
  title VARCHAR(35) NOT NULL UNIQUE,
  release_year NUMBER NOT NULL,
  director_id NUMBER NOT NULL,
  score NUMBER(3, 2) DEFAULT 2.5 CHECK (score < 5 AND score > 0)
);

-- Q1 SOLUTION --
--      B      --
CREATE TABLE L5_ACTORS (
  a_id NUMBER PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(30) NOT NULL
);

-- Q1 SOLUTION --
--      C      --
CREATE TABLE L5_CASTINGS (
  movie_id NUMBER,
  actor_id NUMBER,
  FOREIGN KEY ( movie_id ) REFERENCES L5_MOVIES(m_id),
  FOREIGN KEY ( actor_id ) REFERENCES L5_ACTORS(a_id),
  PRIMARY KEY ( movie_id, actor_id )
);

-- Q1 SOLUTION --
--      D      --
CREATE TABLE L5_DIRECTORS (
  director_id NUMBER PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(30) NOT NULL
);

-- Q2 SOLUTION --
ALTER TABLE L5_MOVIES
ADD CONSTRAINT fk_movies
  FOREIGN KEY (director_id)
  REFERENCES L5_DIRECTORS(director_id);

-- Q3 SOLUTION --
TRUNCATE TABLE L5_DIRECTORS;

-- Q4 SOLUTION --
--      A      --
DROP TABLE L5_CASTINGS;
DROP TABLE L5_ACTORS;
DROP TABLE L5_MOVIES;
DROP TABLE L5_DIRECTORS;
--      B      --
-- The order of the statements does matter
-- because some of the tables have references in
-- other tables being deleted. Deleting the tables
-- that are being refered by other tables
-- will throw an error and the best way to resolve this
-- is to delete the tables with references before
-- the table being refered.
