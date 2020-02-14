`timescale 1ns / 1ps
module DFF_tb;

reg D, Clk, Reset;
wire Q, Qbar;

DFF uut(.Q(Q), .Qbar(Qbar), .D(D), .Clk(Clk), .Reset(Reset));
initial begin
D = 1'b0;
Clk = 1'b0;
Reset = 1'b1;
#100
Reset = 1'b0;

#20

forever #40 D=~D;
end
always #10 Clk = ~Clk;
endmodule