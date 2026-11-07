# ScholarScout
ScholarScout helps students find scholarships that match their profile (income, marks, gender, category, state and education level). It was built as a DBMS course project using HTML, CSS, PHP and SQL.


A platform that helps students discover scholarships they are eligible for, based on their profile: annual income, marks, gender, category, state and education level. Scholarship providers post scholarships, and an admin reviews them before they go live.

> **Status:** Early stage. The database design is done; the application layer is not started yet.

## Features (planned)

- **Students:** register, create a profile, browse scholarships matched to their profile, and save scholarships for later.
- **Providers:** post scholarships with eligibility rules (maximum income, minimum marks, gender, category, state, education level) and a deadline.
- **Admin:** approve or reject posted scholarships. Each scholarship has a `status` of `pending`, `approved`, `rejected` or `expired`.

## Database design

The ER diagram uses Chen notation.

![ER Diagram](docs/ER_diagram.drawio.png)

Editable source: [`docs/ER_diagram.drawio`](docs/ER_diagram.drawio) (open it at [diagrams.net](https://app.diagrams.net)).

### Tables

| Table | Purpose |
|-------|---------|
| `users` | Student login accounts |
| `student_profile` | One profile per user (income, marks, education level, gender, category, state) |
| `gender`, `category`, `state` | Lookup tables |
| `provider` | Organisations that post scholarships |
| `admin` | Reviewers who approve scholarships |
| `scholarship` | Scholarship details, deadline and `status` |
| `saves` | Scholarships saved by users (M:N, with `saved_at`) |
| `scholarship_gender`, `scholarship_category`, `scholarship_state` | Which genders, categories and states a scholarship is open to (M:N) |

### Relationships

- A user has exactly one student profile (1:1).
- A profile has one gender, one category and one state.
- A provider posts many scholarships (1:N).
- An admin approves many scholarships (1:N).
- Users save many scholarships, and a scholarship can be saved by many users (M:N).
- A scholarship can be open to many genders, categories and states (M:N).

## Repository structure

```
scholarscout/
├── README.md
├── docs/
│   ├── ER_diagram.drawio
│   └── ER_diagram.drawio.png
└── database/
    └── scholarship_finder_tables.sql
```
