module gray2bin_tb;
 parameter WIDTH = 4;
  integer i;
   wire [WIDTH-1:0] data_bin_out;
   reg [WIDTH-1:0] data_gray_in;
   gray2bin_gate  convert1 (data_gray_in,data_bin_out);
   initial begin
$monitor ( " gray in = %b, bin out = %b", data_gray_in,data_bin_out);
 // data from 0 to 15
  for ( i=0 ; i< (2**WIDTH) ;i = i+1 ) begin
    data_gray_in = i;
    #10;
  end
 $finish;
      end
    
   
   

 endmodule
 // the parameter