module control(
		input [3:0]key,
		input [499:0]map,
		input clkdiv, //100M Hz
		input CLR,
		output reg[9:0]edget, //top
		output reg[9:0]edgeb, //bottom
		output reg[9:0]edgel, //left
		output reg[9:0]edger  //right
		);
		
	reg[19:0] div;
	reg[9:0] i = 'd0;
	reg flag = 1'b0;
	
	initial
	begin
	        edget <= 451;
			edgeb <= 475;
			edgel <= 24;
			edger <= 47;
	end
	
	
	always @(posedge clkdiv or negedge CLR) begin
		if(CLR) begin
			edget <= 451;
			edgeb <= 475;
			edgel <= 24;
			edger <= 47;
		end
	end
	
	always @(posedge div) begin
		if(map[(edgeb/24-1)*25] == 0 && flag == 0) begin
			edget <= edget - 1;
			edgeb <= edgeb - 1;
		end
	end
	
	always @(posedge div) begin
		if(key[0] == 1 && map[(edgeb+1)/24*25] == 1) begin //脚下一定要有砖，防止"二段跳"
			flag <= 1;
		end
		if(flag == 1 && map[(edget-1)/24*25] == 0 && i < 130) begin 
			flag <= 1;
			edget <= edget - 1;
			edgeb <= edgeb - 1;
			i <= i + 1; 
		end
		else if(i > 0) begin
			i <= i - 1;
			flag <= 0;
			edget <= edget + 1;
			edgeb <= edgeb + 1;
		end
	end
	
	always @(posedge clkdiv) begin
		if(key[1] == 1) begin
//			pass
		end
		
		if(key[2] == 1 && map[(edget/24)*25*24 + (edgel-1)/24] == 0) begin
			edgel <= edgel - 1;
			edger <= edger - 1;
		end
		
		if(key[3] == 1 && map[(edget/24)*25*24 + (edger+1)/24] == 0) begin
			edger <= edger + 1;
			edgel <= edgel + 1;
		end
		
	end
	
	always @(posedge clkdiv) begin
		div <= div + 1;
	end

endmodule