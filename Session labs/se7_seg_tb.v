module se7_seg_tb;
parameter WIDTH = 4;
//paramter
reg [WIDTH-1:0] data_bin_in;
wire [6:0] data_hex_out;

se7_seg segment1 (data_bin_in,data_hex_out);
 integer i;
initial begin
$monitor ("binary in = %b, hex out = %b",data_bin_in,data_hex_out);
for (i =0  ; i < (2**WIDTH) ; i =i+1 ) begin
#10
data_bin_in = i;    
end

   $finish;     
end

 
endmodule


