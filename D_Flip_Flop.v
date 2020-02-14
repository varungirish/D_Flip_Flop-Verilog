module DFF(Q, Qbar, D, Clk, Reset);
output reg Q;
output Qbar;
input D, Clk, Reset;

assign Qbar = ~Q;

always @(posedge Clk)
begin
if(Reset == 1'b1)
Q = 1'b0;
else
Q = D;
end
endmodule
