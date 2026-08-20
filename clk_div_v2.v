module clk_div_v2 #(
    parameter clk_freq_in =50_000_000, 
    parameter clk_freq_out =4  // no , here as port sentece
) (
    input clk,rst_n,
    output reg clk_out 
);
integer divide_counts = (((clk_freq_in/clk_freq_out) /2) - 1 );// size int or reg ?  made 32 bit just in case
integer count;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        clk_out <= 1'b0;
        count <= 1'b0;
    end
    else if (count==divide_counts) begin
        count <= 0;
        clk_out<=~clk_out;
        
    end
    else begin
        count <= count+1'b1;
    end
end
    
endmodule


/*
counter and clk_out relation
when bit 0 toggle, clk out = in/2
bit 1 ==>  /4
bit n toggle ==>  divide by 2^(n+1)

*/