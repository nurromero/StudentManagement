This project demonstrates database schema migrations for a simple Student Management System in .NET using Entity Framework Core.

We chose to start with the EF/Code first approach. With this, Entity Framework tracks model changes in the code, and generates migration files that evolve the database schema step by step.

We started with creating a new .NET console project,
Then we installed the necessary EF Core packages via NuGet:
Microsoft.EntityFrameworkCore
Microsoft.EntityFrameworkCore.SqlServer
Microsoft.EntityFrameworkCore.Tools
Then we created the models.
We created a DbCointext file, with connection string to LocalDB.
Here we added the inital migration, using the command:
dotnet ef migrations add InitalCreate
And then updated it, using 
dotnet ef database update.

The reasoning for this approach is that it provides a clear history of schema changes. Each migration file documents how the schema evolved.

Question in: 5. Rename Grade attribute to FinalGrade in Enrollment
Some changes (like adding MiddleName or DateOfBirth) are non-destructive, since they extend the schema. 
Others (like renaming Grade to FinalGrade) are destructive, as EF replaces the column and data could be lost. 
In this project it’s acceptable, since no real data exists yet.



