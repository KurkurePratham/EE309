library ieee;
use ieee.std_logic_1164.all;

entity ResetState is
	port (current_state : IN STD_LOGIC_VECTOR(4 downto 0);
        clear_enable : OUT STD_LOGIC
        );
end ResetState;


architecture description of ResetState is
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
		process (current_state)
		begin
			case current_state is
        when S1 | S2 | S3 | S4 | S5 | S6 | S7 | S8 | S9 | S10 | S11 | S12 | S13 | S14 | S15 | S16 | S17 | S18 | S19 | S20 | S21 | S22 =>
                clear_enable <= '0';
				when others =>
        	      clear_enable <= '1';
      end case;
		end process;
end description;
