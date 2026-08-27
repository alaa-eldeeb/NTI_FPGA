module gray2hex #(
    parameter WIDTH = 4
)
(
input [WIDTH-1:0]data_gray_in,
output [6:0] data_hex_out
);
wire  [WIDTH-1:0]data_bin_out;
gray2bin_gate  #(.WIDTH(WIDTH))
 convert1 
(.data_gray_in(data_gray_in),.data_bin_out(data_bin_out));
se7_seg #(.WIDTH(WIDTH))
convert2 (.data_bin_in(data_bin_out),.data_hex_out(data_hex_out));


endmodule 