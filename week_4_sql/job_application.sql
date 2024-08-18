CREATE DATABASE job_applicationdb;

SHOW DATABASES;

USE job_applicationdb;

SHOW TABLES;

DESCRIBE users;

SHOW COLUMNS FROM work_experiences;


CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    address TEXT,
    email VARCHAR(255),
    description TEXT
);

CREATE TABLE work_experiences (
    work_experience_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    company_name VARCHAR(255),
    job_title VARCHAR(255),
    start_date DATE,
    end_date DATE,
    description TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE job_fields (
    job_field_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);

CREATE TABLE recruiters (
    recruiter_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    company_name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE job_vacancies (
    job_vacancy_id INT PRIMARY KEY AUTO_INCREMENT,
    recruiter_id INT,
    title VARCHAR(255),
    description TEXT,
    job_field_id INT,
    status VARCHAR(50),
    FOREIGN KEY (recruiter_id) REFERENCES recruiters(recruiter_id),
    FOREIGN KEY (job_field_id) REFERENCES job_fields(job_field_id)
);

CREATE TABLE applications (
    application_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    job_vacancy_id INT,
    cv_document VARCHAR(255),
    cover_letter TEXT,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (job_vacancy_id) REFERENCES job_vacancies(job_vacancy_id)
);

INSERT INTO job_fields (name) 
VALUES ('Technology'), ('Economics'), ('Social'), ('Education');

INSERT INTO users (name, address, email, description) 
VALUES ('Alice Johnson', '123 Main St', 'alice@example.com', 'Experienced software developer');


INSERT INTO work_experiences (user_id, company_name, job_title, start_date, end_date, description) 
VALUES (1, 'Tech Corp', 'Software Engineer', '2018-01-01', '2021-12-31', 'Developed various software applications');


INSERT INTO recruiters (name, company_name, email) 
VALUES ('John Doe', 'Tech Recruiters', 'john@techrecruiters.com');


INSERT INTO job_vacancies (recruiter_id, title, description, job_field_id, status) 
VALUES (1, 'Full Stack Developer', 'Looking for a full stack developer with 3+ years of experience', 1, 'Open');


INSERT INTO applications (user_id, job_vacancy_id, cv_document, cover_letter, status) 
VALUES (1, 1, 'alice_cv.pdf', 'I am interested in the Full Stack Developer position.', 'Applied');


UPDATE job_vacancies 
SET status = 'Closed' 
WHERE job_vacancy_id = 1;


UPDATE applications 
SET status = 'Interview Scheduled' 
WHERE application_id = 1;



DELETE FROM work_experiences 
WHERE work_experience_id = 1;


DELETE FROM job_vacancies 
WHERE job_vacancy_id = 1;


SELECT * FROM job_vacancies;


SELECT a.application_id, u.name AS user_name, a.status 
FROM applications a
JOIN users u ON a.user_id = u.user_id
WHERE a.job_vacancy_id = 1;


SELECT w.company_name, w.job_title, w.start_date, w.end_date, w.description 
FROM work_experiences w
WHERE w.user_id = 1;