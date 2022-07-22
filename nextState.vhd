library ieee;
use ieee.std_logic_1164.all;

entity NextStateFSMLogic is
  port (current_state: IN STD_LOGIC_VECTOR(4 downto 0);
        op_code: IN STD_LOGIC_VECTOR(3 downto 0);
        condition: IN STD_LOGIC_VECTOR(1 downto 0);
        C, Z: IN STD_LOGIC;
        temp_z : IN STD_LOGIC;
        PE0: IN STD_LOGIC;

        next_state: OUT STD_LOGIC_VECTOR(4 downto 0));
end NextStateFSMLogic;

architecture behave of NextStateFSMLogic is
  constant S1: STD_LOGIC_VECTOR(4 downto 0) := "00001";
  constant S2: STD_LOGIC_VECTOR(4 downto 0) := "00010";
  constant S3: STD_LOGIC_VECTOR(4 downto 0) := "00011";
  constant S4: STD_LOGIC_VECTOR(4 downto 0) := "00100";
  constant S5: STD_LOGIC_VECTOR(4 downto 0) := "00101";
  constant S6: STD_LOGIC_VECTOR(4 downto 0) := "00110";
  constant S7: STD_LOGIC_VECTOR(4 downto 0) := "00111";
  constant S8: STD_LOGIC_VECTOR(4 downto 0) := "01000";
  constant S9: STD_LOGIC_VECTOR(4 downto 0) := "01001";
  constant S10: STD_LOGIC_VECTOR(4 downto 0) := "01010";
  constant S11: STD_LOGIC_VECTOR(4 downto 0) := "01011";
  constant S12: STD_LOGIC_VECTOR(4 downto 0) := "01100";
  constant S13: STD_LOGIC_VECTOR(4 downto 0) := "01101";
  constant S14: STD_LOGIC_VECTOR(4 downto 0) := "01110";
  constant S15: STD_LOGIC_VECTOR(4 downto 0) := "01111";
  constant S16: STD_LOGIC_VECTOR(4 downto 0) := "10000";
  constant S17: STD_LOGIC_VECTOR(4 downto 0) := "10001";
  constant S18: STD_LOGIC_VECTOR(4 downto 0) := "10010";
  constant S19: STD_LOGIC_VECTOR(4 downto 0) := "10011";
  constant S20: STD_LOGIC_VECTOR(4 downto 0) := "10100";
  constant S21: STD_LOGIC_VECTOR(4 downto 0) := "10101";
  constant S22: STD_LOGIC_VECTOR(4 downto 0) := "10110";
  
  begin
    process (current_state, op_code, C, Z, condition, PE0, temp_z) --many more
    begin
      case current_state is
        when S1 =>
		          if op_code = "0001" then
                next_state <= S2;
					 elsif op_code = "0011" then
					 next_state <= S2;
					 elsif op_code = "0010" then
					 next_state <= S2;
					 elsif op_code = "0000" then
					 next_state <= S8;
					 elsif op_code = "0111" then
					 next_state <= S2;
					 elsif op_code = "0101" then
					 next_state <= S2;
					 elsif op_code = "1100" then
					 next_state <= S2;
					 elsif op_code = "1101" then
					 next_state <= S2;
					 elsif op_code = "1000" then
					 next_state <= S2;
					 elsif op_code = "1001" then
					 next_state <= S13;
					 elsif op_code = "1010" then
					 next_state <= S2;
					 elsif op_code = "1011" then
					 next_state <= S2;
					 end if;
					 
        when S2 =>
                if op_code = "0001" then
					   if (C = '1' and Z = '1' ) then
                  next_state <= S5;
						else next_state <= S3;
						end if;
					 elsif op_code = "0011" then
					 next_state <= S6;
					 elsif op_code = "0010" then
					 next_state <= S3;
					 elsif op_code = "0111" then
					 next_state <= S9;
					 elsif op_code = "0101" then
					 next_state <= S9;
					 elsif op_code = "1100" then
					 next_state <= S18;
					 elsif op_code = "1101" then
					 next_state <= S20;
					 elsif op_code = "1000" then
					 next_state <= S3;
					 elsif op_code = "1010" then
					 next_state <= S15;
					 elsif op_code = "1011" then
					 next_state <= S17;
					 end if;
					 
					 
					 
		 when S3 =>
		          if op_code = "0001"  then
                next_state <= S4;
					 elsif op_code = "1000" then
					 next_state <= S12;					 
					 end if;		 
					 
				
				
		 when S4 =>
		          if op_code = "0001" then
                next_state <= S1;
					 end if;			 
					 
		

       when S5 =>
		          if op_code = "0001" then
                next_state <= S4;
					 end if;
					 
		 when S6 =>
		          
					 if op_code = "0011" then
					 next_state <= S7;
					 end if;
					 
		 when S7 =>
		         
					 if op_code = "0011" then
					 next_state <= S1;
					 end if;

		 when S8 =>
		         
					 if op_code = "0000" then
					 next_state <= S1;
					 end if;			 
					 
		  when S9 =>
					 if op_code = "0111" then
					 next_state <= S10;
					 elsif op_code = "0101" then
					 next_state <= S10;
					 end if;
					 
					 
		   when S10 =>
		         
					 if op_code = "0111" then
					 next_state <= S11;
					 elsif op_code = "0101" then
					 next_state <= S1;
					 end if;			 
					 
					 
			 when S11 =>
		          
					 if op_code = "0111" then
					 next_state <= S1;
					 elsif op_code = "1001" then
					 next_state <= S1;
					 end if;
					 
			 when S12 =>
		         
					 if op_code = "1000" then
					 next_state <= S1;
					 end if;	 
					 
			 when S13 =>
					 if op_code = "1001" then
					 next_state <= S14;					 
					 end if;	
					
			 when S14 =>
		          if op_code = "1001" then
					 next_state <= S11;					 
					 end if;	
					 
					 
			 when S15 =>
		         
					 if op_code = "1010" then
					 next_state <= S16;
					 
					 end if;
					 
			when S16 =>
		         
					 if op_code = "1010" then
					 next_state <= S22;
					 
					 end if;
					 
		   when S17 =>
		         
					 if op_code = "1011" then
					 next_state <= S1;
					 
					 end if;
					 
					 
		   when S18 =>
		         
					 if op_code = "1100" then
					 next_state <= S19;					 
					 end if;
					 
		   when S19 =>
		         
					 if op_code = "1100" then
					 next_state <= S18;
					 
					 end if;
					 
		   when S20 =>
		         
					 if op_code = "1101" then
					 next_state <= S21;
					 
					 end if;

					 
		   when S21 =>
		         
					 if op_code = "1101" then
					 next_state <= S20;
					 
					 end if;
				
		
		  when S22 =>
		         
					 if op_code = "1010" then
					 next_state <= S1;
					 
					 end if;

	when others =>
                next_state <= S1;
      end case;
    end process;
end behave;
