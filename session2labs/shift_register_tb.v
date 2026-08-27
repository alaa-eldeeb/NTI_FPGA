module shift_register_tb;
    parameter  WIDTH =4;

   reg clk;
   reg rst_n;  
   wire [WIDTH-1:0] data;
   shift_register #(.WIDTH(WIDTH)) shif1(clk,rst_n,data);

  always #10 clk=~clk;
   initial begin
      clk =0;
      rst_n = 0;
       @(negedge clk);
        rst_n = 1;  
    repeat (6) @(negedge clk);
      rst_n = 0;
        repeat (2) @(negedge clk);
    $finish;
   end
    
endmodule