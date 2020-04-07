# IBLW Readme
Online Database of Volunteer Doctors
![Imgur Image](https://www.gov.pl/photo/40fee575-0ecc-405d-8e62-9396f7064fe3)  
Konrad Strojny  
Wojciech Kanas


## Overview
Application lets any doctor register in the database by signing up.
It also enables patient to sign up and report a problem with his health.
Then the doctor is able to contact patient directly.

### How it works?
Every doctor account is verified in NIL (Naczelna Izba Lekarska / Supreme Chamber of Phisitians)
to make sure he is allowed to give advice and prescriptions

### Use cases
Doctor:  
- signs up by providing personal details and PWZ (right to practice)
- is able to browse the list of health problem reports
- is able to see the list of health assigned to his specialization only
- is able to assign a case to particular specialization
- is able to call a patient from inside of the platform

Patient:
- is able to sign up providing personal details
- is able to report one health problem simultaneously
- can receive a phone call from a doctor


## Installation
-

### Requirements
-

### Local setup
`rake db:create`  
`rake db:migrate`  

### First test run
-

### Installing and running services
-


## Running app locally
`rails s`  


## Application structure
Ruby on Rails convention


## Development instructions
-

### Patterns
-

### Git workflow
Currently there is only master branch that is deployed to production.
Please create Pull Requests to the master branch directly

### Deployment
Deploy with  
`cap production deploy`  
Log in to server with  
`ssh deploy@xxx.xxx.xxx.xxx -p 4321`

### Roadmap
- Adding Biometric-As-A-Service ID verification

<!--- Refer to https://github.com/matiassingers/awesome-readme to see examples and tools
to create readme in general --->
