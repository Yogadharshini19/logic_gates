 module logic_gates_tb;
 reg a,b;
wire p,q,r,s,t,c,d;
logic_gates dut(.a(a),.b(b),.p(p),.q(q),.r(r),.s(s),.t(t),.c(c),.d(d));
initial
begin
$monitor("time=%t ,p=%b q=%b r=%b s=%b t=%b c=%b d=%b",$time,p,q,r,s,t,c,d);
a=1'b0; b=1'b0;
#5;
a=1'b0; b=1'b1;
#5;
a=1'b1; b=1'b0;
#5;
a=1'b1; b=1'b1;
#5;
$stop;
end
endmodule
 
 
 
 
 
 
 