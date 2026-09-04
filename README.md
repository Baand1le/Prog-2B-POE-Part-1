# Prog-2B-POE-Part-1
# RaceDay Management System

## Project Overview

RaceDay is an event management system designed to allow organisers to create and manage events while allowing participants to browse events, enrol in available categories, and view their results.

This repository contains the planning and database design completed for **Part 1 of the POE**.

---

## Part 1

Part 1 focuses on the design and planning of the RaceDay system before the full API implementation.

The following components were completed:

- Entity Relationship Diagram (ERD)
- API Endpoint Plan
- SQL Server Database Script
- Database sample data

---

## System Roles

The system contains two main user roles:

### Organiser

Organisers are responsible for:

- Creating events
- Updating events
- Deleting events
- Creating event categories
- Viewing participant enrolments
- Recording participant results

### Participant

Participants are able to:

- Browse available events
- View event details
- Select an event category
- Enrol in events
- View their enrolments
- View their race results

Users are distinguished by their assigned role in the `userRole` table.

---

## Database Design

The RaceDay database consists of the following entities:

- `Users`
- `userRole`
- `Event`
- `Category`
- `Enrollment`
- `Result`

### Main Relationships

- One role can be assigned to many users.
- One organiser can organise many events.
- One event can contain many categories.
- One participant can have many enrollments.
- One event can have many enrollments.
- One category can be selected by many participants.
- An enrollment can have a result.

The database uses primary keys and foreign keys to maintain relationships and referential integrity between the tables.

---

## API Endpoint Plan

The planned API contains endpoints for:

### Authentication

- `POST /api/auth/register`
- `POST /api/auth/login`

### User Profiles

- `GET /api/users/{userID}`
- `PUT /api/users/{userID}`

### Events

- `GET /api/events`
- `GET /api/events/{eventID}`
- `POST /api/events`
- `PUT /api/events/{eventID}`
- `DELETE /api/events/{eventID}`

### Categories

- `GET /api/events/{eventID}/categories`
- `POST /api/events/{eventID}/categories`

### Enrollments

- `POST /api/events/{eventID}/enrollments`
- `GET /api/events/{eventID}/enrollments`
- `GET /api/users/{userID}/enrollments`

### Results

- `GET /api/users/{userID}/results`
- `POST /api/enrollments/{enrollmentID}/result`

These endpoints form the planned structure for the API that will be implemented in the following part of the POE.

---

## Database Tables

### Users

Stores user information and their assigned role.

### userRole

Stores the available user roles, including Organiser and Participant.

### Event

Stores event information such as the event name, description, date, location, distance and event type.

### Category

Stores the categories available for each event.

### Enrollment

Records participants who have enrolled in an event and the category they selected.

### Result

Stores participant finishing times and finishing positions.

---

## Sample Data

The database includes sample data for:

- 2 Organisers
- 2 Participants
- 3 Events
- 6 Event Categories
- 5 Enrollments
- Sample race results

The sample data is used to demonstrate that the database relationships and foreign keys are functioning correctly.

---

## Technologies

The planned system uses:

- C#
- .NET / ASP.NET Core Web API
- SQL Server
- Entity Framework Core
- GitHub
- dbdiagram.io

---

## Project Structure

The Part 1 repository contains the database and planning documentation required for the POE.

##CI/CD Workflow
<img width="1366" height="768" alt="Screenshot 2026-09-04 222817" src="https://github.com/user-attachments/assets/26b5c837-3bce-4198-955d-9902b926cee6" />
