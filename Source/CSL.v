module CSL(
 
    input                       CLK,
    input                       reset_n,
    input           [2:0]       NextState,
    output   reg    [2:0]       CurrentState
    
);
 
always @(posedge clk, negedge reset_n)
    if(reset_n == 0)
        CurrentState = ZERO;
    else
        CurrentState = NextState;
 
 
endmodule

    








