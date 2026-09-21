-- Demo seed data for Bayanno Hospital Management System
-- Import this into a fresh MySQL database after creating the application schema.
-- Default password for all demo users: Password123
-- The application stores passwords as SHA1(), so the SQL below matches the app's login logic.

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`) VALUES
(1, 'System Admin', 'admin@bayanno.local', SHA1('Password123'))
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `email` = VALUES(`email`), `password` = VALUES(`password`);

INSERT INTO `doctor` (`doctor_id`, `name`, `email`, `password`, `address`, `phone`, `department_id`, `profile`, `social_links`) VALUES
(1, 'Dr. Sarah Lee', 'doctor@bayanno.local', SHA1('Password123'), '123 Medical Avenue, Manila', '+63 912 345 6789', 1, 'Cardiology specialist with 8 years of experience.', 'facebook.com/sarahlee|linkedin.com/in/sarahlee')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `email` = VALUES(`email`), `password` = VALUES(`password`), `address` = VALUES(`address`), `phone` = VALUES(`phone`), `department_id` = VALUES(`department_id`), `profile` = VALUES(`profile`), `social_links` = VALUES(`social_links`);

INSERT INTO `patient` (`patient_id`, `code`, `name`, `email`, `password`, `address`, `phone`, `sex`, `birth_date`, `age`, `blood_group`, `account_opening_timestamp`) VALUES
(1, 'P-1001', 'Maria Santos', 'patient@bayanno.local', SHA1('Password123'), '12 Green Street, Quezon City', '+63 917 111 2222', 'Female', '1994-05-14', 30, 'O+', UNIX_TIMESTAMP('2025-01-10 08:00:00'))
ON DUPLICATE KEY UPDATE `code` = VALUES(`code`), `name` = VALUES(`name`), `email` = VALUES(`email`), `password` = VALUES(`password`), `address` = VALUES(`address`), `phone` = VALUES(`phone`), `sex` = VALUES(`sex`), `birth_date` = VALUES(`birth_date`), `age` = VALUES(`age`), `blood_group` = VALUES(`blood_group`), `account_opening_timestamp` = VALUES(`account_opening_timestamp`);

INSERT INTO `nurse` (`nurse_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Nurse Ana Cruz', 'nurse@bayanno.local', SHA1('Password123'), '88 Wellness Road, Makati', '+63 918 777 9988')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `email` = VALUES(`email`), `password` = VALUES(`password`), `address` = VALUES(`address`), `phone` = VALUES(`phone`);

INSERT INTO `receptionist` (`receptionist_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Receptionist Jane Ramos', 'receptionist@bayanno.local', SHA1('Password123'), '14 Main Avenue, Mandaluyong', '+63 922 333 4455')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `email` = VALUES(`email`), `password` = VALUES(`password`), `address` = VALUES(`address`), `phone` = VALUES(`phone`);

INSERT INTO `laboratorist` (`laboratorist_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Lab Tech Mark Dionio', 'laboratorist@bayanno.local', SHA1('Password123'), '54 Lab Bldg, Pasig', '+63 926 444 1122')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `email` = VALUES(`email`), `password` = VALUES(`password`), `address` = VALUES(`address`), `phone` = VALUES(`phone`);

INSERT INTO `pharmacist` (`pharmacist_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Pharmacist Rosa Lim', 'pharmacist@bayanno.local', SHA1('Password123'), '19 Pharmacy Street, Cebu City', '+63 919 654 1122')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `email` = VALUES(`email`), `password` = VALUES(`password`), `address` = VALUES(`address`), `phone` = VALUES(`phone`);

INSERT INTO `accountant` (`accountant_id`, `name`, `email`, `password`, `address`, `phone`) VALUES
(1, 'Accountant Daniel Ong', 'accountant@bayanno.local', SHA1('Password123'), '21 Finance Building, Davao', '+63 927 555 0099')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `email` = VALUES(`email`), `password` = VALUES(`password`), `address` = VALUES(`address`), `phone` = VALUES(`phone`);

-- Optional starter medical departments if you want a realistic initial data set.
INSERT INTO `department` (`department_id`, `name`, `description`, `facilities`) VALUES
(1, 'Cardiology', 'Heart and vascular care services.', 'ECG, stress test, echocardiogram')
ON DUPLICATE KEY UPDATE `name` = VALUES(`name`), `description` = VALUES(`description`), `facilities` = VALUES(`facilities`);
