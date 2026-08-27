
module se7_seg #(parameter WIDTH = 4)(
    input  [3:0] data_bin_in,
    output reg [6:0] data_hex_out   
    
);

/* 
data_hex_out [0] = a, data_hex_out [6] = g
active high 
*/
    always @(*) begin
        case (data_bin_in)
            4'b0000: data_hex_out = 7'b0111111; 
            4'b0001: data_hex_out = 7'b0000110; 
            4'b0010: data_hex_out = 7'b1011011; 
            4'b0011: data_hex_out = 7'b1001111; 
            4'b0100: data_hex_out = 7'b1100110; 
            4'b0101: data_hex_out = 7'b1101101; 
            4'b0110: data_hex_out = 7'b1111101; 
            4'b0111: data_hex_out = 7'b0000111; 
            4'b1000: data_hex_out = 7'b1111111; 
            4'b1001: data_hex_out = 7'b1101111; 
            4'b1010: data_hex_out = 7'b1110111; 
            4'b1011: data_hex_out = 7'b1111100; 
            4'b1100: data_hex_out = 7'b0111001; 
            4'b1101: data_hex_out = 7'b1011110; 
            4'b1110: data_hex_out = 7'b1111001; 
            4'b1111: data_hex_out = 7'b1110001; 
            default: data_hex_out = 7'b0000000;
        endcase
    end

endmodule