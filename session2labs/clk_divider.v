module clk_divider #(
    parameter division = 4
) (
    input clk,rst_n,
    output reg out_clk 
);
integer  count;
always @(posedge clk or negedge rst_n) begin
if (!rst_n) begin
    count <= 0;
    out_clk <= 0;
end
else 
begin
    if (count == ((division/2)-1) ) begin
        count <=0;
        out_clk <= ~out_clk;
        
    end
    else begin
      count<=count+1;
    end
        
 end

end

endmodule