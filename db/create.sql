-- Feel free to modify this file to match your development goal.
-- Here we only create 3 tables for demo purpose.

CREATE TABLE Users (
    id INT GENERATED BY DEFAULT AS IDENTITY,
    email VARCHAR UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL
);

CREATE TABLE Products (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    price FLOAT NOT NULL,
    available BOOLEAN DEFAULT TRUE
);

CREATE TABLE Purchases (
    id INT NOT NULL PRIMARY KEY,
    uid INT NOT NULL,
    pid INT NOT NULL,
    time_purchased timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

CREATE TABLE League (
    l_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    president VARCHAR(255) NOT NULL
);

CREATE TABLE Matches (
    activity VARCHAR(255) NOT NULL,
    matchID INT NOT NULL PRIMARY KEY,
    user1_ID INT NOT NULL,
    user2_ID INT NOT NULL,
    user1_score INT NOT NULL,
    user2_score INT NOT NULL,
    date_time datetime NOT NULL
);

CREATE TABLE Activity (
    name VARCHAR(255) NOT NULL PRIMARY KEY
);
