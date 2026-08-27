DROP TABLE IF EXISTS job_applied;

CREATE TABLE job_applied(
    job_id INT,
    application_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    status VARCHAR(50)
);

INSERT INTO job_applied (
    job_id, 
    application_sent_date, 
    custom_resume, 
    resume_file_name, 
    cover_letter_sent, 
    cover_letter_file_name, 
    status
)
VALUES
    (1, '2023-01-15', TRUE, 'resume_john_doe.pdf', TRUE, 'cover_letter_john_doe.pdf', 'Pending'),
    (2, '2023-01-20', FALSE, NULL, FALSE, NULL, 'Rejected'),
    (3, '2023-02-05', TRUE, 'resume_jane_smith.pdf', TRUE, 'cover_letter_jane_smith.pdf', 'Accepted'),
    (4, '2023-02-10', FALSE, NULL, FALSE, NULL, 'Pending'),
    (5, '2023-02-15', TRUE, 'resume_mike_brown.pdf', TRUE, 'cover_letter_mike_brown.pdf', 'Interview Scheduled');

ALTER TABLE job_applied
DROP COLUMN contact;

SELECT *
FROM job_applied;