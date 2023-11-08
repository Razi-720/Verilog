module SR_FF(S, R, Q, Qb);
input S, R;
output reg Q, Qb;
wire sb, rb;
nand (sb, S, S);
nand (rb, R, R);

//instantial SbRb_FF

SbRb_FF Clk_level(.Sb(sb), .Rb(rb), .q(Q), .qb(Qb));
endmodule