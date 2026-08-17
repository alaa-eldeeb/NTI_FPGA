module gray2bin_tb;

   wire [3:0] data_bin_out;
   reg [3:0] data_gray_in;
   gray2bin_gate  convert1 (.data_gray_in(data_gray_in),.data_bin_out(data_bin_out));
   initial begin
$monitor ( " gray in = %b, bin out = %b", data_gray_in,data_bin_out);
  #10 data_gray_in = 4'b0110;
    #10 data_gray_in = 4'b0111;
  #10 data_gray_in = 4'b1100;
  #10 data_gray_in = 4'b1111;
 $finish;
      end
    
   
   

 endmodule
 // the parameter