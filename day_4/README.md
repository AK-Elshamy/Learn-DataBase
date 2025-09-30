# day_4 ==> with Mohamed Eldesoky

> # مضغوط جدا وحاسس اني مش فاهم فبراجع مع الدسوقي عشان مكروتش حاجه ITI المحتوى بتاع

## Out line

- **constraint (primary key, foreign key)**
- **check constraint**
- **Alter Table Statement**
- - **Columns** **(_Add_,_Alter_, _Rename_)**
- - **Constraints** **(_Add_, _Drop_)**
- **EXEC SP_RENAME**

---

## Notes

- ### **حاليا بنتعلم ازاي نغير في هيكل الجدول نفسه**

  - Add **دي لو انا عايز اضيف عمود او كونسترين**

  ```
      ALTER TABLE table_name
      ADD column_name data_type column_constraint;
      -------------------------------------------------------
      ALTER TABLE table_name
      ADD
      column_name_1 data_type_1 column_constraint_1,
      column_name_2 data_type_2 column_constraint_2,
      ...,
      column_name_n data_type_n column_constraint_n;

  ```

  - Alter **لو انا عايز اغير حاجه في العمود نفسه ملحوظه مقدرش اغير نوع البيانات الا لو العمود فاضي مفهوش بيانات**

  ```
      ALTER TABLE table_name
      ALTER COLUMN column_name new_data_type(size);
  ```

  - **اقدر كمان احذف عمود من خلال ALTER**

---

# Day 4 – SQL Quick Review 📚

> Summary: Focus on **Constraints** & **Altering Tables** – perfect for exam & real work.

---

## 1️⃣ Constraints – مفاتيح وشروط

| Type            | Description                   | Example                                     |
| --------------- | ----------------------------- | ------------------------------------------- |
| **Primary Key** | Unique & not null per row     | `id INT PRIMARY KEY`                        |
| **Foreign Key** | Ensures referential integrity | `FOREIGN KEY (dept_id) REFERENCES Dept(id)` |
| **Check**       | Restricts values              | `CHECK (age >= 18)`                         |

> Can be added while creating table or using `ALTER TABLE`.

---

## 2️⃣ ALTER TABLE – تعديل الجدول

### Add Column / Constraint

```sql
-- Add single column
ALTER TABLE table_name
ADD column_name data_type column_constraint;

-- Add multiple columns
ALTER TABLE table_name
ADD
  column1 datatype constraint,
  column2 datatype constraint;
```

### Modify Column

```sql
ALTER TABLE table_name
ALTER COLUMN column_name new_data_type(size);
```

> Note: Can only change datatype if column is empty.

### Drop Column

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### Add / Drop Constraint

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name constraint_type (column_name);

ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

---

## 3️⃣ Rename – إعادة التسمية

```sql
-- Rename table
EXEC sp_rename 'old_name', 'new_name', 'OBJECT';

-- Rename column
EXEC sp_rename 'table_name.old_column', 'new_column', 'COLUMN';
```

---

## ✅ Quick Tips

- **Always use `bismillah` & check before dropping** ⚠️
- Use constraints to **maintain data integrity**
- `ALTER TABLE` is your **main tool for schema changes**
- Practice **adding, modifying, dropping** columns and constraints
- `sp_rename` helps keep names **clear & consistent**

---
