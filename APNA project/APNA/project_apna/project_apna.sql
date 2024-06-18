CREATE DATABASE project_apna;
USE project_apna;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    user_type ENUM('candidate', 'employer') NOT NULL
);


CREATE TABLE CommunityPosts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    community_section VARCHAR(50) NOT NULL,
    post_title VARCHAR(100) NOT NULL,
    post_content TEXT
);

CREATE TABLE SocialLogins (
    social_id INT AUTO_INCREMENT PRIMARY KEY,
    platform VARCHAR(50) NOT NULL,
    user_id INT,
    token VARCHAR(255),
    expiration DATETIME
);

CREATE TABLE UserActions (
    action_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    action_type VARCHAR(50) NOT NULL,
    action_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Sessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    session_start DATETIME DEFAULT CURRENT_TIMESTAMP,
    session_end DATETIME
);







