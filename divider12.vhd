LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY divider12 IS
	PORT(
		clk12M  : IN std_logic;
		clk3M   : OUT std_logic;
		clk1M   : OUT std_logic;
		clk750k : OUT std_logic;
		clk500k : OUT std_logic;
		clk200k : OUT std_logic;
		clk100 : OUT std_logic;
		clk1 : OUT std_logic
	);
END divider12;

ARCHITECTURE behavior OF divider12 IS              -- CHECK (Finish)
SIGNAL qs3M    : std_logic_vector (1 downto 0);    -- Finished ✔
SIGNAL qs1M    : std_logic_vector (2 downto 0);    -- Finished ✔
SIGNAL qs750K  : std_logic_vector (1 downto 0);    -- Finished ✔
SIGNAL qs500K  : std_logic_vector (2 downto 0);    -- Finished ✔
SIGNAL qs200K  : std_logic_vector (2 downto 0);    --
SIGNAL qs100   : std_logic_vector (4 downto 0);    --
SIGNAL qs1     : std_logic_vector (2 downto 0);    --
SIGNAL sig3M   : std_logic;
SIGNAL sig1M   : std_logic;
SIGNAL sig750k : std_logic;
SIGNAL sig500k : std_logic;
SIGNAL sig200k : std_logic;
SIGNAL sig100  : std_logic;
SIGNAL sig1    : std_logic;

BEGIN

   -- LINE 1 : 3M,750k
	counter3M : PROCESS(clk12M, qs3M)
	BEGIN
		IF rising_edge(clk12M) THEN
			IF qs3M < 3 THEN
				qs3M <= qs3M + 1;
			ELSE
				qs3M <= "00";
			END IF;
		END IF;
	END PROCESS;
	
	clkA1C : PROCESS(qs3M)
	BEGIN
		IF (qs3M = 0 OR qs3M =  1) THEN
			 sig3M <= '1';
		ELSE
			 sig3M <= '0';
		END IF;
	END PROCESS;
	
	clk3M <= sig3M;
	
-------------------------

	counter750k : PROCESS(sig3M, qs750K)
	BEGIN
		IF rising_edge(sig3M) THEN
			IF qs750K < 3 THEN
				qs750K <= qs750K + 1;
			ELSE
				qs750K <= "00";
			END IF;
		END IF;
	END PROCESS;
	
	clkA2C : PROCESS(qs750K)
	BEGIN
		IF (qs750K = 0 OR qs750K =  1) THEN
			 sig750k <= '1';
		ELSE
			 sig750k <= '0';
		END IF;
	END PROCESS;
	
	clk750k <= sig750k;

-------------------------
	-- LINE 2 : 1M,500k,200k,100,1
	counter1M : PROCESS(clk12M, qs1M)
	BEGIN
		IF rising_edge(clk12M) THEN
			IF qs1M < 11 THEN
				qs1M <= qs1M + 1;
			ELSE
				qs1M <= "000";
			END IF;
		END IF;
	END PROCESS;
	
	clkA3C : PROCESS(qs1M)
	BEGIN
		IF (qs1M < 6) THEN
			 sig1M <= '1';
		ELSE
			 sig1M <= '0';
		END IF;
	END PROCESS;
	
	clk1M <= sig1M;
	
-------------------------

	counter500k : PROCESS(sig1M, qs500k)
	BEGIN
		IF rising_edge(sig1M) THEN
			IF qs500k < 9 THEN
				qs500k <= qs500k + 1;
			ELSE
				qs500k <= "000";
			END IF;
		END IF;
	END PROCESS;
	
	clkA4C : PROCESS(qs500k)
	BEGIN
		IF (qs500k = 1 OR qs500k =  3 OR qs500k = 5 OR qs500k = 7 OR qs500k = 9) THEN
			 sig500k <= '1';
		ELSE
			 sig500k <= '0';
		END IF;
	END PROCESS;
	
	clk500k <= sig500k;
	
-------------------------
	
   counter200k : PROCESS(sig1M, qs200K)
	BEGIN
		IF rising_edge(sig1M) THEN
			IF qs200K < 9 THEN
				qs200K <= qs200K + 1;
			ELSE
				qs200K <= "000";
			END IF;
		END IF;
	END PROCESS;
	
	clkA5C : PROCESS(qs200K)
	BEGIN
		IF (qs200K < 4) THEN
			 sig200k <= '1';
		ELSE
			 sig200K <= '0';
		END IF;
	END PROCESS;
	
   clk200k <= sig200k;
		
-------------------------
	
	counter100 : PROCESS(sig200k, qs100)
	BEGIN
		IF rising_edge(sig200k) THEN
			IF qs100 < 19 THEN
				qs100 <= qs100 + 1;
			ELSE
				qs100 <= "00000";
			END IF;
		END IF;
	END PROCESS;
	
	clkA6C : PROCESS(qs100)
	BEGIN
		IF (qs100 < 10) THEN
			 sig100 <= '1';
		ELSE
			 sig100 <= '0';
		END IF;
	END PROCESS;
	
   clk100 <= sig100;
			
-------------------------
	
	counter1 : PROCESS(sig100, qs1)
	BEGIN
		IF rising_edge(sig100) THEN
			IF qs1 < 9 THEN
				qs1 <= qs1 + 1;
			ELSE
				qs1 <= "000";
			END IF;
		END IF;
	END PROCESS;
	
	clkA7C : PROCESS(qs1)
	BEGIN
		IF (qs1 = 0 OR qs1 = 2 OR qs1 = 4 OR qs1 = 6 OR
		    qs1 = 8 OR qs1 = 10) THEN
			 sig1 <= '1';
		ELSE
			 sig1 <= '0';
		END IF;
	END PROCESS;
	
   clk1 <= sig1;
END behavior;