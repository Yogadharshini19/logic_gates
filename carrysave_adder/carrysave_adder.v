module carrysave_adder(p,q,r,sum,cout);
input [3:0]p,q,r;
output cout;
output [4:0]sum;
wire [3:0]c0,s0;
wire [2:0]c1;
full_adder fa1(p[0],q[0],r[0],s0[0],c0[0]);
full_adder fa2(p[1],q[1],r[1],s0[1],c0[1]);
full_adder fa3(p[2],q[2],r[2],s0[2],c0[2]);
full_adder fa4(p[3],q[3],r[3],s0[3],c0[3]);
full_adder fa5(c0[0],s0[1],1'b0,sum[1],c1[0]);
full_adder fa6(c0[1],s0[2],c1[0],sum[2],c1[1]);
full_adder fa7(c0[2],s0[3],c1[1],sum[3],c1[2]);
full_adder fa8(c0[3],1'b0,c1[2],sum[4],cout);
assign sum[0]=s0[0];
endmodule

module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum=a^b^c;
assign carry=a&b|b&c|c&a;
endmodule


