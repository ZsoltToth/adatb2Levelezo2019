--- Hello World
begin
	DBMS_OUTPUT.PUT_LINE('Hello');
end;
--- Hello World with variables.
declare
name varchar2(20);
begin
	name := 'Zsolt';
	DBMS_OUTPUT.PUT_LINE('Hello ' || name);
end;

--- Prime calculation with for loop and if condition
DECLARE 
   a number(2); 
   isPrime boolean;
BEGIN 
	   FOR a in 2 .. 99 LOOP
		      isPrime := TRUE;
		      FOR b in 2 .. a-1 LOOP
			          IF (MOD(a,b) = 0) THEN
					             isPrime := FALSE;
						--             dbms_output.put_line('a % b == 0: ' || a || ' % ' || b); 
          END IF;
	      END LOOP;
	      IF isPrime THEN
		          dbms_output.put_line('Prime: ' || a); 
			      END IF;
			  END LOOP; 
		END; 

