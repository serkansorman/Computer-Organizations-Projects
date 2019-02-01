module register_block(read_reg1, read_reg2, write_reg, write_data, read_data1, read_data2,write_signal,clock);

input [4:0] read_reg1, read_reg2, write_reg;
input [31:0] write_data;
input write_signal,clock;
output reg[31:0] read_data1, read_data2;
reg [31:0] registers [31:0];


always @(*)
begin
	$readmemb("registers.mem", registers);

	read_data1 = registers[read_reg1];		//read rs content
	read_data2 = registers[read_reg2];		//read rt content
	
	if(write_signal == 1'b1 && clock == 1'b1 && write_reg != 5'b00000) //Can not write to r0
	begin		
		registers[write_reg] = write_data;	// write the result to mem 
		$writememb("registers.mem" , registers);	// write the mem to file
	end
	
end
	
endmodule