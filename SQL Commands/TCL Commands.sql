-------------------------------------------------------	TCL START------------------------------------------------

--Transaction Control Language

--TCL commands can only use with DML commands like INSERT, DELETE and UPDATE only.

--Here are some commands that come under TCL:

--COMMIT

Begin transaction
 
UPDATE [Student]  
   SET [Name] = 'Peter Huges'  
      ,[Gender] = 'Male'  
      ,[Age] = 26  
      ,[Marks] = 478  
 WHERE [Id] = 4

Commit transaction


--ROLLBACK

 
 Begin transaction

 DELETE FROM [Student]; 
 
 rollback  transaction

