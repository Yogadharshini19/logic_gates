module carryselect_adder(a,b,cin,cin1,cin0,sum,cout);
input [3:0]a,b;
input cin,cin1,cin0;
output [3:0]sum;
wire [3:0]s0,s1;
wire [2:0]c0,c1;
wire cout0,cout1;
output cout;
ripplecarry_ad rc1(a,b,cin0,s0,cout0);
ripplecarry_ad rc2(a,b,cin1,s1,cout1);
mux m1(cin,s0[0],s1[0],sum[0]);
mux m2(cin,s0[1],s1[1],sum[1]);
mux m3(cin,s0[2],s1[2],sum[2]);
mux m4(cin,s0[3],s1[3],sum[3]);
mux m5(cin,cout0,cout1,cout);
endmodule 

module mux(s,a,b,y);
input a,b,s;
output y;
assign y=s?a:b;
endmodule

module ripplecarry_ad(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output cout;
output [3:0]s;
wire [2:0]c;
full_adder fa1(a[0],b[0],cin,s[0],c[0]);
full_adder fa2(a[1],b[1],c[0],s[1],c[1]);
full_adder fa3(a[2],b[2],c[1],s[2],c[2]);
full_adder fa4(a[3],b[3],c[2],s[3],cout);
endmodule

module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule



