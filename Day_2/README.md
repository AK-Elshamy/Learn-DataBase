
# Day 2 — Database Systems
Video: https://youtu.be/k0SHOJhtsgI?si=kjoZt-ul8PlCy7nR

Table of contents
-----------------

1. Mapping (ERD → Relational Schema)
2. Create DB Wizard (brief notes)
3. DDL — Data Definition Language
4. DML — Data Manipulation Language
5. DQL — Data Query Language

----

1. Mapping (ERD → Relational Schema)
------------------------------------

This section describes a practical, step-by-step mapping from ER diagrams to relational tables. Use these rules when converting conceptual models into a normalized schema.

1. Strong entity → table
- Each strong entity becomes a table.
- The entity's primary key becomes the table's PRIMARY KEY.

2. Weak entity → table
- Map each weak entity to its own table.
- The table's primary key is a composite key: (owner-entity PK + weak entity partial key).

3. Composite / multi-valued attribute → table
- If an attribute is composite or multi-valued create a separate table.
- That table should include the parent entity PK and the attribute(s).
- Use a composite primary key: (entity PK, attribute).

4. Relationship (M:N) → table
- Convert many-to-many relationships into a relationship table.
- The relationship table contains the PKs of the two participating entities (combined as the PK) and any relationship attributes.

5. Relationship (1:N)
- Place the PK from the "1" side as a FOREIGN KEY in the "N" side table.
- Add relationship attributes (if any) to the "N" side table.

6. Relationship (1:1)
- If one side is total (mandatory), place the PK of the partial side as a FK in the total side table.
- If both sides are total, choose a table for the FK based on access patterns or simplicity.
- If both are optional (partial), either choose a side for the FK or create a new table when appropriate.

7. Attributes on relationships
- For M:N relationships, put relationship attributes in the relationship table.
- For 1:N or 1:1 relationships, store relationship attributes in the table that holds the FK.

Notes & best practices
----------------------

- Prefer simple, stable primary keys (surrogate keys are acceptable when natural keys are unstable).
- Normalize until you reach 3NF unless you have a clear performance-driven reason to denormalize.
- Document chosen FKs and constraints clearly in the schema DDL.

----

2. Create DB Wizard — brief notes
---------------------------------

These are short, practical tips when using database GUI wizards to create databases or tables.

- Always review the automatically generated DDL before applying it.
- Set explicit data types and sizes (do not rely on defaults for critical columns).
- Define NOT NULL, UNIQUE, and CHECK constraints where appropriate.
- Add indexes for columns used frequently in WHERE, JOIN and ORDER BY clauses.

----

3. DDL — Data Definition Language
---------------------------------

DML statements used to define and modify schema objects. Common DDL commands:

- CREATE DATABASE / CREATE SCHEMA
- CREATE TABLE
- ALTER TABLE (add/drop columns, add constraints)
- DROP TABLE, DROP INDEX, DROP CONSTRAINT
- CREATE / DROP INDEX

Example: create table DDL (simple)

CREATE TABLE student (
  student_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  dob DATE,
  email VARCHAR(255) UNIQUE
);

----

4. DML — Data Manipulation Language
-----------------------------------

DML commands operate on data within tables. Common DML commands:

- INSERT — add new rows
- UPDATE — modify existing rows
- DELETE — remove rows

Example (insert):

INSERT INTO student (student_id, name, dob, email) VALUES (1, 'Ali', '1990-01-01', 'ali@example.com');

----

5. DQL — Data Query Language
----------------------------

DQL focuses on querying and retrieving data (SELECT and related clauses):

- SELECT ... FROM ... WHERE ...
- JOINs: INNER, LEFT/RIGHT OUTER, FULL OUTER
- GROUP BY / HAVING
- ORDER BY / LIMIT (or TOP)

Example (simple select):

SELECT student_id, name, email FROM student WHERE email IS NOT NULL ORDER BY name;

----


# الحمد لله




