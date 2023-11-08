module SbRb_FF(Sb, Rb, q, qb);
input Sb, Rb;
output q, qb;
nand G1(q, Sb, qb);
nand G2(qb, Rb, q);
endmodule
