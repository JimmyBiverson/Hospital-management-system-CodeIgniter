# Bayanno Hospital Management System

Online system: https://hospital-system.duckdns.org/

This repository contains a CodeIgniter-based hospital management system for patient, doctor, and administrative workflows. It is not a Laravel project and should be run as a standard CodeIgniter application.

If the project is not installed on your local machine, the online working system is available at https://hospital-system.duckdns.org/.

## What the system does

The platform is designed around a hospital workflow with role-based dashboards for:

- Admin
- Doctor
- Patient
- Nurse
- Receptionist
- Laboratorist
- Pharmacist
- Accountant

Each role logs in through the same login page but is redirected to a different section based on the matching user table in the database. The login controller checks each table in turn and sets the session variables for the correct role.

## How it works

1. The user visits the login page at `/index.php/login` or the web root.
2. The application checks the submitted email and password against the relevant role table.
3. The credentials are hashed using `sha1()` before comparison.
4. If the email/password matches a record in `admin`, `doctor`, `patient`, `nurse`, `receptionist`, `laboratorist`, `pharmacist`, or `accountant`, the session is set for that role.
5. The user is redirected to the dashboard for that role.
6. Each role-specific controller manages its own views, patients, appointments, reports, invoices, and administrative actions.

## Project structure

- `application/controllers/` — role controllers and login logic
- `application/models/` — CRUD and logic models
- `application/views/` — frontend and backend templates
- `application/config/` — database and app configuration
- `uploads/install.sql` — full schema for the system
- `demo_seed.sql` — seeded demo users for all available roles

## Local setup

1. Create a MySQL database named `bayanno` or update the credentials in `application/config/database.php`.
2. Import the schema from `uploads/install.sql`.
3. Optional but recommended: import the demo data from `demo_seed.sql`.
4. Start the app:

   php -S localhost:8000

5. Open the application in the browser:

   http://localhost:8000/

   or

   http://localhost:8000/index.php

## Demo users included

The demo seed file adds a working user for each role. All demo accounts use the same password:

- Password: `Password123`

| Role | Email | Notes |
| --- | --- | --- |
| Admin | admin@bayanno.local | System administration |
| Doctor | doctor@bayanno.local | Doctor panel |
| Patient | patient@bayanno.local | Patient portal |
| Nurse | nurse@bayanno.local | Nursing workflow |
| Receptionist | receptionist@bayanno.local | Front desk and patient intake |
| Laboratorist | laboratorist@bayanno.local | Lab and reports |
| Pharmacist | pharmacist@bayanno.local | Prescription and medicine management |
| Accountant | accountant@bayanno.local | Billing and finance |

## Notes

- This application expects a MySQL database.
- Do not run it with `php artisan serve` because this project is not Laravel.
- The app uses CodeIgniter session-based authentication and role-specific controllers.
- The demo seed file is intended to make testing the system easier when the default install schema is empty.

## Reference demo

The public demo at `https://demo.creativeitem.com/bayanno/login` follows the same user-flow pattern as this repository: the login page exposes one button per role and each button uses the same role-based authentication model.

## Hosted deployment

Live online system: https://hospital-system.duckdns.org/

Use this URL when you want to access the online hospital system without running the project locally.

## Demo login accounts

All seeded demo users use the same password:

- Password: `Password123`

| Role | Email |
| --- | --- |
| Admin | admin@bayanno.local |
| Doctor | doctor@bayanno.local |
| Patient | patient@bayanno.local |
| Nurse | nurse@bayanno.local |
| Receptionist | receptionist@bayanno.local |
| Laboratorist | laboratorist@bayanno.local |
| Pharmacist | pharmacist@bayanno.local |
| Accountant | accountant@bayanno.local |

## Security reminder

Use a local-only development database and never commit production secrets or live credentials to source control.
