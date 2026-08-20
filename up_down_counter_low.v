module up_down_counter_low #(
    parameter WIDTH =4
) ( 
    //active low
    input clk,rst_n, en_n, up_n,
    output reg [WIDTH-1:0] counted_val
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        counted_val<={WIDTH{1'b0}};
    end
    else if(!en_n) begin
        if (!up_n) begin
          counted_val <= counted_val+1'b1;
        end
        else begin
             counted_val <= counted_val-1'b1;

        end
            
    end

end
    
endmodule