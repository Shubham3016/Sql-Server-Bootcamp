
--GRANT

--Assigns new privileges to a user account, allowing access to specific database objects, actions, or functions.
--GRANT command is helpful to provide privileges to the database.
/* Granting system privileges */
GRANT CREATE TABLE, ALTER TABLE TO user1;

/* Granting object privileges */
GRANT SELECT, UPDATE ON employees TO user2;

--REVOKE	

/* Revoking privileges */
REVOKE ALTER TABLE FROM user1;
REVOKE SELECT ON employees FROM user2;


--Removes previously granted privileges from a user account, taking away their access to certain database objects or actions.
--SQL Revoke command is to withdraw the user’s access privileges given by using the GRANT command.
