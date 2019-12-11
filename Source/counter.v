module counter(
    input                       clk,
    output   reg    [1:0]       count
);

always @(posedge clk)
begin
    if(count != 3)
        count = count + 1;
    else
        count = 0;
end

endmodule