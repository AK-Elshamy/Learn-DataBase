# 📘 Mapping Notes: ERD → Relational Schema

## 1. Strong Entity → Table
- Each strong entity becomes a table.  
- Its Primary Key (PK) is the table’s PK.  

---

## 2. Weak Entity → Table
- Each weak entity becomes a table.  
- PK = [PK of the strong entity + weak entity’s partial key].  

---

## 3. Composite / Multi-valued Attribute → Table
- If an attribute is composite or multi-valued, create a new table.  
- The new table includes [PK of the parent entity + the attribute].  
- PK = (Entity PK + Attribute).  

---

## 4. Relationship (M:N) → Table
- Many-to-Many relationship becomes a new table.  
- The new table has both entity PKs as a combined PK.  
- Relationship attributes go in this table.  

---

## 5. Relationship (1:N)
- Put the PK of the "1" side as a Foreign Key (FK) in the "N" side table.  
- Relationship attributes also go into the "N" side table.  

---

## 6. Relationship (1:1)
- If one side is **Total** (must participate), put the PK of the **Partial** side as FK in the **Total** side table.  
- If both are Total, choose either table for the FK.  
- If both are Partial, pick the simpler table or create a new one if needed.  

---

## 7. Attributes on Relationships
- If the relationship has attributes:  
  - For M:N → put them in the relationship table.  
  - For 1:N or 1:1 → put them in the table that has the FK.  

---




