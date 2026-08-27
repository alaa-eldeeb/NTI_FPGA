module clk_divider_tb;
    parameter division_1 = 4;
    parameter division_2 = 8;

  reg clk,rst_n;
    wire out_clk ;
    clk_divider  #(.division(division_1)) divider_1(clk,rst_n,out_clk);
    clk_divider  #(.division(division_1)) divider_2(clk,rst_n,out_clk);

always #10 clk=~clk;
    initial begin
        clk = 0;
        rst_n = 0;
        @(negedge clk);
        rst_n =1;

    repeat(10)@(negedge clk);
    rst_n =0;
    repeat(3)@(negedge clk);
    rst_n =0;
    repeat(5)@(negedge clk);
$finish;
    end
    
endmodule