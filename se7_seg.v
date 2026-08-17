

module se7_seg (
    input  [3:0] data_bin_in,
    output reg [6:0] data_hex_out  
);

/* 
data_hex_out [0] = a, data_hex_out [6] = g
active high 
*/
    always @(*) begin
        case (data_bin_in)
            4'h0: data_hex_out = 7'b0111111; 
            4'h1: data_hex_out = 7'b0000110; 
            4'h2: data_hex_out = 7'b1011011; 
            4'h3: data_hex_out = 7'b1001111; 
            4'h4: data_hex_out = 7'b1100110; 
            4'h5: data_hex_out = 7'b1101101; 
            4'h6: data_hex_out = 7'b1110000; 
            4'h7: data_hex_out = 7'b0000111; 
            4'h8: data_hex_out = 7'b1111111; 
            4'h9: data_hex_out = 7'b1101111; 
            4'hA: data_hex_out = 7'b1110111; 
            4'hB: data_hex_out = 7'b1111100; 
            4'hC: data_hex_out = 7'b0111001; 
            4'hD: data_hex_out = 7'b1011110; 
            4'hE: data_hex_out = 7'b1111001; 
            4'hF: data_hex_out = 7'b1110001; 
            default: data_hex_out = 7'b0000000;
        endcase
    end

endmodule