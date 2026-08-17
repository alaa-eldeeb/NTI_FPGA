module gray2bin_gate #(parameter WIDTH = 4)  
(input wire[WIDTH -1:0] data_gray_in,
output reg [WIDTH -1:0] data_bin_out)
;

integer i;
always @(*) begin
    data_bin_out[WIDTH -1] = data_gray_in[WIDTH -1];
   for (i = WIDTH -2; i>=0; i = i-1)
   begin
       data_bin_out[i] = data_gray_in[i] ^ data_bin_out[i + 1];
       
       /*
        data_bin_out[3] = data_gray_in[3];
        data_bin_out[2] = data_gray_in[3] ^ data_gray_in[2];
        data_bin_out[1] = data_gray_in[3] ^ data_gray_in[2]^ data_gray_in[1];
        data_bin_out[0] = data_gray_in[3] ^ data_gray_in[2]^ data_gray_in[1] ^data_gray_in[0];

       */
    end
end

endmodule

