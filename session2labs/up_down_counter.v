module up_down_counter #(
    parameter WIDTH =4
) (
    input rst_n,clk,load_en,en,up,
    input [WIDTH-1:0] load_val,
    output reg [WIDTH -1 :0] counted_val
);
    
always @(posedge clk or negedge rst_n) begin
if (!rst_n) begin
    counted_val <= {WIDTH{1'b0}};
end 
else if (load_en)begin
  counted_val <= load_val;

end
else if (en) begin
    if (up) begin
        counted_val <= counted_val + 1'b1;
    end
    else begin
         counted_val <= counted_val - 1'b1;

    end
end


    /*
    case (rst_n)
    0: counted_val <= {WIDTH -1 [0]};
    1: case ()
        
    endcase
        
    endcase*/
end


endmodule