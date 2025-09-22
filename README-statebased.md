# Student Management System – State-Based Migrations

This project also demonstrates a state-based migration strategy using plain SQL scripts.

## Steps taken
1. Created a set of versioned SQL scripts (V1__InitialSchema.sql, V2__AddMiddleName.sql, etc.).  
2. Each script represents the **full desired state** of the schema at that version.  
3. A database can be brought in sync by applying the latest script, regardless of its starting point.  

## Reasoning
The state-based approach ensures that any database can be quickly aligned with the target schema.  

However, it **does not keep the detailed step-by-step history** of changes like EF migrations.  
We found EF/Code-first easier to work with, since we felt more in control of the migration steps.
