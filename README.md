This project demonstrates database schema migrations for a simple Student Management System in .NET using Entity Framework Core.

We chose to start with the EF/Code first approach. With this, Entity Framework tracks model changes in the code, and generates migration files that evolve the database schema step by step.

**EF/Code first:**
1. We started with creating a new .NET console project,
2. Then we installed the necessary EF Core packages via NuGet:
Microsoft.EntityFrameworkCore
Microsoft.EntityFrameworkCore.SqlServer
Microsoft.EntityFrameworkCore.Tools
3. Then we created the models.
4. We created a DbCointext file, with connection string to LocalDB.
5. Here we added the inital migration, using the command:
dotnet ef migrations add InitalCreate
6. And then updated it, using 
dotnet ef database update.

The reasoning for this approach is that it provides a clear history of schema changes. Each migration file documents how the schema evolved.

Question in: 5. Rename Grade attribute to FinalGrade in Enrollment
Some changes (like adding MiddleName or DateOfBirth) are non-destructive, since they extend the schema. 
Others (like renaming Grade to FinalGrade) are destructive, as EF replaces the column and data could be lost. 
In this project it’s acceptable, since no real data exists yet.


**State based approach:**

For the state-based approach, we created a set of versioned SQL scripts (V1__InitialSchema.sql, V2__AddMiddleName.sql, etc.).  
Each script represents the full desired state of the schema at that version.  
This allows any database to be brought in sync by applying the script, regardless of its current state.  

State-based scripts always show the full desired schema, but they don’t keep the detailed step-by-step history like EF migrations. We found that using EF/Code first was easier, as we felt more in control. 
