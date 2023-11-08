module CLA_4bit_DF(C,S,A,B,c);
output C;
output [3:0]S;
input c;
input [3:0]A,B;
wire [3:0]p, g;
wire [4:1]C;

assign 	p[0] = (A[0]^B[0]),
	p[1] = (A[1]^B[1]),
	p[2] = (A[2]^B[2]),
	p[3] = (A[3]^B[3]);

assign 	g[0] = (A[0]&B[0]),
	g[1] = (A[1]&B[1]),
	g[2] = (A[2]&B[2]),
	g[3] = (A[3]&B[3]);

assign 	C[1] = (g[0]|p[0]&c),
	C[2] = (g[1]|p[1]&C[1]),
	C[3] = (g[2]|p[2]&C[2]),
	C[4] = (g[3]|p[3]&C[3]);

assign 	S[0] = (A[0]^p[0]),
	S[1] = (A[1]^p[1]),
	S[2] = (A[2]^p[2]),
	S[3] = (A[3]^p[3]);
assign  C    =  C[4];
endmodule