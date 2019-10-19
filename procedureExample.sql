CREATE OR REPLACE PROCEDURE createPerson(
	firstname varchar2, 
	lastname varchar2, 
	nationality varchar2) AS
personId number;
BEGIN
	DBMS_OUTPUT.PUT_LINE('HELLO ' || firstname || ' ' || lastname || ' from ' || nationality);
END;

begin
	createPerson('Matyi', 'Ludas', 'hun');
end

CREATE OR REPLACE PROCEDURE createPerson(
	        firstname varchar2, 
		        lastname varchar2, 
			        nationality varchar2) AS
			personId number;
			BEGIN
				select max(personId) into personId from person;
				personId := personId +1;
				insert into person values(personId, firstname, lastname, nationality);
				DBMS_OUTPUT.PUT_LINE(firstname || ' ' || lastname || ' ' || nationality || ' was inserted with id: '|| personId);
			END;

