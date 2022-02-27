--import std_logic from the IEEE library
library ieee;
use ieee.std_logic_1164.all;

--ENTITY DECLARATION: no inputs, no outputs
entity Boolean_Function_Case_Statement_tb is
end Boolean_Function_Case_Statement_tb;

architecture tb of Boolean_Function_Case_Statement_tb is
   component Boolean_Function_Case_Statement is	
     Port ( a1 : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
			  b1 : in  STD_LOGIC;
			  b0 : in  STD_LOGIC;
           c0   : out STD_LOGIC;
			  c1   : out STD_LOGIC;
			  c2   : out STD_LOGIC);
  end component;
	
   signal  a1, a0, b1, b0, c0, c1, c2 : std_logic;

begin 
   --map the testbench signals to the ports of the andGate
   mapping: Boolean_Function_Case_Statement port map(a1 => a1, a0 => a0, b1 => b1, b0 => b0, c0 => c0, c1 => c1, c2 => c2);
 
   process
   begin
      --TEST 1
      a1 <= '0';
      a0 <= '0';
		b1 <= '0';
      b0 <= '0';
		wait for 15 ns;
      --TEST 2
      a1 <= '0';
      a0 <= '0';
		b1 <= '0';
      b0 <= '1';
      wait for 15 ns;
		--TEST 3
      a1 <= '0';
      a0 <= '0';
		b1 <= '1';
      b0 <= '0';
      wait for 15 ns;
		--TEST 4
      a1 <= '0';
      a0 <= '0';
		b1 <= '1';
      b0 <= '1';
      wait for 15 ns;
		--TEST 5
      a1 <= '0';
      a0 <= '1';
		b1 <= '0';
      b0 <= '0';
      wait for 15 ns;
		--TEST 6
      a1 <= '0';
      a0 <= '1';
		b1 <= '0';
      b0 <= '1';
      wait for 15 ns;
		--TEST 7
      a1 <= '0';
      a0 <= '1';
		b1 <= '1';
      b0 <= '0';
      wait for 15 ns;
		--TEST 8
      a1 <= '0';
      a0 <= '1';
		b1 <= '1';
      b0 <= '1';
      wait for 15 ns;
		--TEST 9
      a1 <= '1';
      a0 <= '0';
		b1 <= '0';
      b0 <= '0';
      wait for 15 ns;
		--TEST 10
      a1 <= '1';
      a0 <= '0';
		b1 <= '0';
      b0 <= '1';
		wait for 15 ns;
		--TEST 11
      a1 <= '1';
      a0 <= '0';
		b1 <= '1';
      b0 <= '0';
		wait for 15 ns;
		--TEST 12
      a1 <= '1';
      a0 <= '0';
		b1 <= '1';
      b0 <= '1';
		wait for 15 ns;
		--TEST 13
      a1 <= '1';
      a0 <= '1';
		b1 <= '0';
      b0 <= '0';
		wait for 15 ns;
		--TEST 14
      a1 <= '1';
      a0 <= '1';
		b1 <= '0';
      b0 <= '1';
		wait for 15 ns;
		--TEST 15
      a1 <= '1';
      a0 <= '1';
		b1 <= '1';
      b0 <= '0';
		wait for 15 ns;
		--TEST 16
      a1 <= '1';
      a0 <= '1';
		b1 <= '1';
      b0 <= '1';
      wait for 15 ns;
		
      wait;
   end process;
end tb;
