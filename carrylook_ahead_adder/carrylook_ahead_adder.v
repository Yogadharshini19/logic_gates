module carrylook_ahead_adder(a,b,cin,cout,sum);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire [3:0]p,g;
wire [4:0]c;
assign p=a^b;
assign g=a&b;
assign c[0]=cin;
assign c[1]=(p[0]&c[0])|g[0];
assign c[2]=(p[0]&p[1]&c[0])|(p[1]&g[0])|g[1];
assign c[3]=(p[0]&p[1]&p[2]&c[0])|(p[1]&p[2]&g[0])|(p[2]&g[1])|g[2];
assign c[4]=(p[0]&p[1]&p[2]&p[3]&c[0])|(p[1]&p[2]&p[3]&g[0])|(p[2]&p[3]&g[1])|(p[3]&g[2])|g[3];
assign cout=c[4];
assign sum=p^c[3:0];
endmodule

