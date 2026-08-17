module gray2hex (
input [3:0]data_gray_in,
output [6:0] data_hex_out
);
wire  [3:0]data_bin_out;
gray2bin_gate convert1 (.data_gray_in(data_gray_in),.data_bin_out(data_bin_out));
se7_seg convert2 (.data_bin_in(data_bin_out),.data_hex_out(data_hex_out));


endmodule 