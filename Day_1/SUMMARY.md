# 📘 Day 1 — Database Systems Summary

## 📝 Quick Notes

### DB Life Cycle
1. Requirement Analysis → gather entities, attributes, relationships.  
2. DB Design → Conceptual (ERD), Logical, Physical.  
3. DB Mapping → Translate ERD to relational schema.  
4. DB Implementation → Using RDBMS (MySQL, Oracle, etc.).  
5. Client / End User → interacts through GUI or application.  

### File-Based System
- ❌ Data Redundancy  
- ❌ Inconsistency  
- ❌ Program-Data Dependence  
- ❌ Poor Data Sharing  
- ❌ Security issues  
- ❌ Difficult backup & restore  

### DBMS Advantages
- ✅ Reduces redundancy  
- ✅ Maintains consistency  
- ✅ Security & Authorization  
- ✅ Data sharing & concurrency  
- ✅ Backup & Recovery  

### ERD Concepts
- **Entities** → represented by rectangles.  
- **Attributes** → ellipses (Simple, Composite, Derived, Multi-valued).  
- **Relationships** → diamonds (Unary, Binary, Ternary).  
- **Constraints** → Cardinality (1:1, 1:N, M:N), Participation (Total, Partial).  
- **Strong vs Weak Entities** → Weak needs identifying relationship + partial key.  

### Keys & Constraints
- **Super Key** → Any attribute set uniquely identifying rows.  
- **Candidate Key** → Minimal super key.  
- **Primary Key** → Chosen candidate key.  
- **Alternate Key** → Candidate key not chosen as primary.  
- **Composite Key** → Multiple attributes forming a key.  
- **Foreign Key** → Attribute referencing PK of another table.  
- **Partial Key** → Used in weak entities with identifying relationship.  

---

## 🎯 MCQs

1. Which of the following is NOT a disadvantage of File-Based Systems?  
   a) Data Redundancy  
   b) Inconsistency  
   c) Improved Security  
   d) Program-Data Dependence  
   **Answer:** c) Improved Security  

2. In an ERD, attributes are represented by:  
   a) Rectangles  
   b) Diamonds  
   c) Ellipses  
   d) Lines  
   **Answer:** c) Ellipses  

3. Which key uniquely identifies a row but may include unnecessary attributes?  
   a) Candidate Key  
   b) Super Key  
   c) Primary Key  
   d) Foreign Key  
   **Answer:** b) Super Key  

4. A weak entity is identified by:  
   a) Primary Key only  
   b) Partial Key + Primary Key of strong entity  
   c) Foreign Key only  
   d) Composite Key only  
   **Answer:** b) Partial Key + Primary Key of strong entity  

---

## ❓ Q&A

**Q1:** What’s the difference between DBMS and Database System?  
**A1:** DBMS = software to manage databases, while Database System = DB + DBMS + Users.  

**Q2:** Give an example of a derived attribute.  
**A2:** Age derived from DateOfBirth.  

**Q3:** Difference between 1:N and M:N relationships?  
**A3:** 1:N → FK in the "many" side. M:N → needs a separate table (junction table).  

**Q4:** Why do we prefer surrogate keys (like `id`) over natural keys (like email)?  
**A4:** Simpler data type, stable, faster indexing, avoids changes if natural attribute updates.  

**Q5:** What is Total Participation constraint?  
**A5:** Every entity must participate in the relationship (e.g., every employee must belong to a department).  

---
