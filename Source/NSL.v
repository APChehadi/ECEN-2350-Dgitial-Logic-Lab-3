module CSL(
 
    input           [2:0]       CurrentState,
    output   reg    [2:0]       NextState
    
);
 
always @ (CurrentState)
  begin
    case (CurrentState)
      ZERO:    NextState = ONE;
      ONE:     NextState = TWO;
      TWO  :   NextState = THREE;
      THREE:   NextState = FOUR;
      FOUR:    NextState = ZERO;
      default: NextState = ZERO;
    end
  end
 
endmodule;