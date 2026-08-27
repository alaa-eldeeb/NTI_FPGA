module up_down_counter_tb;
    parameter  WIDTH =4;
reg rst_n,clk,load_en,en,up;
    reg [WIDTH-1:0] load_val;
    wire [WIDTH -1 :0] counted_val;
  up_down_counter  #(.WIDTH(WIDTH)) counter1 (rst_n,clk,load_en,en,up,load_val,counted_val);  
    always #10 clk=~clk;

    initial begin
        clk=0;
        rst_n=0;
        load_en = 0;
        en = 0;
        up=0;
        load_val ={WIDTH{1'b0}};

    @(negedge clk)begin
      rst_n = 1;
        load_en  = 1;
        load_val = 4'b0101;
    end
        
        @(negedge clk)begin
            load_en  = 0;
                 en = 1;
                 up = 1;

        end

        repeat (4) @(negedge clk);
        up = 0;
        repeat (3) @(negedge clk);

        en = 0;
        repeat (2) @(negedge clk);

        $finish;

    end
endmodule