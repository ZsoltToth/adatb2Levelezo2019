--- Create a simple function which returns with true.
create or replace function isPrime(num number) return boolean is
begin 
	return true;
end;
--- Call it.
BEGIN
	IF (isPrime(5)) THEN
		DBMS_OUTPUT.PUT_LINE('Hello');
	END IF;
END;
--- Function implemented properly
create or replace function isPrime(num number) return boolean is
begin 
	FOR i in 2 .. num-1 LOOP
		IF (MOD(num,i) = 0) THEN
			return false;
END IF;
END LOOP;
return true;
end;
--- Calculating the prime numbers
BEGIN
	FOR i IN 2 .. 99 LOOP
		IF (isPrime(i)) THEN 
			DBMS_OUTPUT.PUT_LINE(i || ' is Prime');
		END IF;
	END LOOP;
END;
