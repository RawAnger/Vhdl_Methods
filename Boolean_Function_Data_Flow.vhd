library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Boolean_Function_Data_Flow is
    Port ( a1 : in  STD_LOGIC;
           a0 : in  STD_LOGIC;
			  b1 : in  STD_LOGIC;
			  b0 : in  STD_LOGIC;
           c0   : out STD_LOGIC;
			  c1   : out STD_LOGIC;
			  c2   : out STD_LOGIC);
end Boolean_Function_Data_Flow;


architecture dataflow of Boolean_Function_Data_Flow is
begin
    c2 <= (a1 and b1) or ( a0 and b1 and b0) or (a1 and a0 and b0);
	 c1 <= ((((not a1) and b1) or (a1 and (not b1))) and ((not a0) or (not b0))) or ((((not a1) and  (not b1)) or (a1 and b1)) and a0 and b0);   
	 c0 <= ((not a0) and b0) or (a0 and (not b0)); 
end dataflow;