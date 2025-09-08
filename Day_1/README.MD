# 📘 Database Systems — Day 1

🎥 **Day 1 Topic:** [Video Link](https://youtu.be/nUiuyejbemc?si=ld6bsh4qxYwbx0aB)

---

## 📂 Topics Covered

1. **DB Life Cycle**
2. **File-Based System & Limitations**
3. **DBMS — Advantages & Disadvantages**
4. **ERD — Notations & Concepts**
5. **Entities, Attributes & Relationships**
6. **Keys & Constraints**
7. **Case Study**

---

## 📝 Outline of Study

- [ ] **DB Life Cycle**
  - Requirement Document
  - DB Design
  - DB Mapping
  - DB Implementation (RDBMS)
  - Client (End User)
  - GUI / Interface

- [ ] **File-Based System**
  - Data Integrity Issues
  - Duplication of Data
  - Security & Permissions
  - Constraints & Rules
  - Data Quality
  - Manual Backup & Restore
  - Lack of Standardization
  - Difficult Integration

- [ ] **DB System**
  - Tables & Relationships
  - Data & Metadata
  - Columns → Data Types
  - Primary Key (Unique & NOT NULL)
  - Foreign Key
  - Centralized DB
  - Partial Key

---

## 📖 Basic Definitions

- **Database** → Organized collection of related data.  
- **DBMS (Database Management System)** → Software to create, manage, and control access to databases.  
- **Database System** → DB + DBMS + Users (Administrators, Developers, End-Users).  

---

## 📌 Notes — Requirement Modeling Reminder

- Any **noun** → Entity or Attribute.  
- Any **verb** → Relationship.  
- Multiple relationships between the same two entities are allowed **if semantics are different**.  

✅ **Example:**  
- **Entities/Attributes (Nouns):** Student, Course, Instructor → Name, Age, Credits  
- **Relationships (Verbs):** Student *enrolls in* Course, Instructor *teaches* Course  

⚠️ **Important:** Avoid redundant relationships.  
- ❌ Wrong: *Student registers Course* & *Student subscribes Course* (same meaning).  
- ✅ Correct: *Student enrolls in Course* & *Student completes Course* (different meaning).  

---
