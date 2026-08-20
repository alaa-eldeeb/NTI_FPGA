`timescale 1ms/1ps
module clk_div_v2_tb ;
parameter  clk_freq_in =50_000_000;
parameter clk_freq_out =4;
reg clk,rst_n;
wire clk_out ;

clk_div_v2 #(.clk_freq_in(clk_freq_in), .clk_freq_out(clk_freq_out))
divder_u1 (
    clk,
    rst_n,
    clk_out
);
always #10 clk = ~clk;
initial begin
     clk = 0;
        rst_n = 0;
 repeat(100)@(negedge clk);
        rst_n =1;

 repeat(300_000_000)@(negedge clk);
     rst_n =0;
    repeat( 1_000_000 )@(negedge clk);
    rst_n =1;
    repeat(300_000_000)@(negedge clk);

    $finish;
   
end
endmodule //clk_div_v2_tb