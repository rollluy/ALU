LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg_mod IS
PORT ( bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
leds : OUT STD_LOGIC_VECTOR(1 TO 7));
END sseg_mod;

ARCHITECTURE Behavior OF sseg_mod IS
BEGIN
PROCESS (bcd)
BEGIN
CASE bcd IS 
WHEN "0000" => leds <= NOT ("1110110"); --abcef, n
WHEN "0001" => leds <= NOT ("0110011"); --bcfg, y
WHEN OTHERS => leds <= NOT ("0000000");
END CASE;
END PROCESS;
END Behavior ;
