module se7_seg_tb;
reg [3:0] data_bin_in;
wire [6:0] data_hex_out;

se7_seg segment1 (.data_bin_in(data_bin_in),.data_hex_out(data_hex_out));

initial begin
$monitor ("binary in = %b, hex out = %h",data_bin_in,data_hex_out);
#10
         data_bin_in = 4'h0; #10
         data_bin_in = 4'h1; #10
         data_bin_in = 4'h2;#10
         data_bin_in = 4'h3;#10
         data_bin_in = 4'h4;#10
         data_bin_in = 4'h5;#10
         data_bin_in = 4'h6;#10
         data_bin_in = 4'h7;#10
         data_bin_in = 4'h8;#10
         data_bin_in = 4'h9;#10
         data_bin_in = 4'hA;#10
         data_bin_in = 4'hB;#10
         data_bin_in = 4'hC;#10
         data_bin_in = 4'hD;#10
         data_bin_in = 4'hE;#10
         data_bin_in = 4'hF;#10
        
        
    $finish;
end

    
endmodule