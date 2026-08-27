module shift_register #(parameter WIDTH =4) (
    input clk,rst_n,
    output reg [WIDTH-1:0] data
);

reg [WIDTH -1:0]default_data = 4'b1000;

always @(posedge clk or negedge rst_n) begin

    if (!rst_n) begin
        data <= default_data;
    end
    else begin
        data <= {data[0],{data[WIDTH-1:1]}};
    end
end
    
endmodule