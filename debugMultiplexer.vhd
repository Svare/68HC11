library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity debugMultiplexer is 
	Port( 
			EDO_PRE: in std_logic_vector(7 downto 0);
			A: in std_logic_vector(7 downto 0); 
			B: in std_logic_vector(7 downto 0); 
			PC_LOW: in std_logic_vector(7 downto 0); 
			PC_HIGH: in std_logic_vector(7 downto 0); 
			X_LOW: in std_logic_vector(7 downto 0); 
			X_HIGH: in std_logic_vector(7 downto 0); 
			FLAGS: in std_logic_vector(7 downto 0);
			
			SEL : in std_logic_vector (2 downto 0);
			
			OUTPUT : out std_logic_vector(7 downto 0)
		 );
	end debugMultiplexer;

architecture Behavioral of debugMultiplexer is
	begin
	
		process(SEL)
			begin
			
				if SEL = "000" then 
					OUTPUT <= EDO_PRE;
				elsif SEL = "001" then 
					OUTPUT <= A;
				elsif SEL = "010" then 
					OUTPUT <= B;
				elsif SEL = "011" then 
					OUTPUT <= PC_LOW;
				elsif SEL = "100" then 
					OUTPUT <= PC_HIGH;
				elsif SEL = "101" then 
					OUTPUT <= X_LOW;
				elsif SEL = "110" then 
					OUTPUT <= X_HIGH;
				elsif SEL = "111" then 
					OUTPUT <= FLAGS;
				end if;
				
			end process;
		
	end Behavioral;