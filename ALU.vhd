LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU IS
	PORT( Clock : IN STD_LOGIC;
			A,B : IN UNSIGNED(7 DOWNTO 0);
			OP : IN UNSIGNED(15 DOWNTO 0);
			student_ID : IN UNSIGNED(3 DOWNTO 0);
			R2 : OUT UNSIGNED(3 DOWNTO 0));
END ALU;

ARCHITECTURE calculation OF ALU IS
SIGNAL Reg2 : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL Result : UNSIGNED(3 DOWNTO 0);
BEGIN
Reg2 <= B;
PROCESS(Clock, OP)
BEGIN
	IF(rising_edge(Clock)) THEN
		CASE OP IS
			WHEN "0000000000000001" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN "0000000000000010" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN "0000000000000100" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN "0000000000001000" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN "0000000000010000" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN "0000000000100000" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN "0000000001000000" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN "0000000010000000" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN "0000000100000000" => 
				IF (Reg2(7 DOWNTO 4) < student_ID) THEN
					Result <= "0001";
				ELSIF (Reg2(3 DOWNTO 0) < student_ID) THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
			WHEN OTHERS => --dc
		END CASE;
	END IF;
END PROCESS;
R2 <= Result(3 DOWNTO 0);
END Calculation;
