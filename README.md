# Hogwarts
An app done in pair programming with John,  that let you enrol student in the famous Hogwarts, in week 4 day 3 of the Codeclan course

# Setup

- Clone/download the repo
- Make sure you have installed Ruby, PostgreSQL and Sinatra in your machine

**In Terminal**:

- Create a hogwarts database: createdb hogwarts
- Access and create the database tables: psql -d hogwarts -f db/hogwarts.sql
- Populate the tables from the db directory: ruby console.rb
- Run the app: ruby controller.rb
- Go to http://localhost:4567/students in your browser


# Brief

Make a system for tracking student enrolments at Hogwarts.

Each student has:

- A first name
- A second name
- A house
- An age

**MVP**

- Create a Hogwarts database
- Create a table for Students
- Create a ruby model that can save() a students details
- Create some seed data to populate the database with students
- Add CRUD methods to a student

**Extensions**

- Create a view to show all the students
- Create a view to create a new student
