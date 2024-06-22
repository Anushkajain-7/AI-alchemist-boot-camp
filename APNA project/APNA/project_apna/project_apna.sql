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



INSERT INTO Users (username, password, email, user_type) VALUES
('rahulsharma', 'rahul@123', 'rahul.sharma@example.com', 'candidate'),
('anita_singh', 'anita@456', 'anita.singh@example.com', 'employer'),
('vikram_verma', 'vikram@789', 'vikram.verma@example.com', 'candidate'),
('sunita_patel', 'sunita@2023', 'sunita.patel@example.com', 'employer'),
('akash_gupta', 'akash@321', 'akash.gupta@example.com', 'candidate'),
('priya_kumar', 'priya@654', 'priya.kumar@example.com', 'employer'),
('amit_joshi', 'amit@987', 'amit.joshi@example.com', 'candidate'),
('neha_mehta', 'neha@741', 'neha.mehta@example.com', 'employer');




INSERT INTO CommunityPosts (community_section, post_title, post_content) VALUES
('General', 'Welcome!', 'Welcome to our community forum. Feel free to introduce yourself.'),
('Career', 'Resume Tips', 'Any tips on improving my resume for tech jobs?'),
('Jobs', 'Hiring Software Engineer', 'We are looking for a software engineer with 3 years of experience.'),
('Events', 'Networking Event', 'Join us for a networking event next Thursday.'),
('General', 'Favorite Languages', 'What are your favorite programming languages?'),
('Career', 'Interview Tips', 'Looking for resources to prepare for technical interviews.'),
('Jobs', 'Marketing Manager', 'We need a marketing manager for our new campaign. Apply now.'),
('Events', 'AI Webinar', 'Attend our webinar on AI trends this Friday at 3 PM.');


INSERT INTO SocialLogins (platform, user_id, token, expiration) VALUES
('Google', 1, 'token123abc', '2024-12-31 23:59:59'),
('Facebook', 2, 'token456def', '2024-12-31 23:59:59'),
('Twitter', 3, 'token789ghi', '2024-12-31 23:59:59'),
('LinkedIn', 4, 'token012jkl', '2024-12-31 23:59:59'),
('Google', 5, 'token345mno', '2024-12-31 23:59:59');




INSERT INTO UserActions (user_id, action_type) VALUES
(1, 'login'),
(2, 'logout'),
(3, 'update_profile'),
(4, 'post_comment'),
(5, 'change_password'),
(1, 'upload_avatar'),
(2, 'send_message'),
(3, 'delete_account');



INSERT INTO Sessions (user_id, session_start, session_end) VALUES
(1, '2024-06-01 08:00:00', '2024-06-01 10:00:00'),
(2, '2024-06-01 09:00:00', '2024-06-01 11:00:00'),
(3, '2024-06-01 10:00:00', '2024-06-01 12:00:00'),
(4, '2024-06-01 11:00:00', '2024-06-01 13:00:00'),
(5, '2024-06-01 12:00:00', '2024-06-01 14:00:00'),
(1, '2024-06-02 08:00:00', '2024-06-02 10:00:00'),
(2, '2024-06-02 09:00:00', '2024-06-02 11:00:00'),
(3, '2024-06-02 10:00:00', '2024-06-02 12:00:00');
