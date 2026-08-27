module gray2hex_tb;
    parameter WIDTH = 4;
    reg  [WIDTH-1:0] data_gray_in;
    wire [6:0] data_hex_out;
    integer i;

 
    gray2hex #(.WIDTH(WIDTH)) gray2hex1 (
        .data_gray_in (data_gray_in),
        .data_hex_out (data_hex_out)
    );
 
 
 
 
    initial begin
    
 
        $monitor("t=%0t gray=%b -> hex_out=%b", $time, data_gray_in, data_hex_out);
 
        
        for (i = 0; i < (1 << WIDTH); i = i + 1) begin
            data_gray_in = i[WIDTH-1:0];
            #10;
        
        end
 

        $finish;
    end
 
endmodule