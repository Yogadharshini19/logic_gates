module flip_flops_tb;
reg j,k,s,r,t,d,clk,rst;
wire  q_jk, qb_jk, q_sr, qb_sr, q_d, qb_d, q_t, qb_t;
flip_flops dut(.j(j),.k(k),.q_jk(q_jk), .qb_jk(qb_jk),.s(s),.r(r),.q_sr(q_sr), .qb_sr(qb_sr),.d(d),.q_d(q_d), .qb_d(qb_d),.t(t),.q_t(q_t), .qb_t(qb_t),.clk(clk),.rst(rst));
initial
begin
clk=1;
forever
#10 clk=~clk;
end
initial 
begin
rst=1;
#50;
rst=0;
#1000;
end
initial
begin
j=1'b0;k=1'b0;s=1'b0;r=1'b0;d=1'b0;t=1'b0;
#100; 
j=1'b0;k=1'b1;s=1'b0;r=1'b1;d=1'b1;t=1'b1;
#100; 
j=1'b1;k=1'b0;s=1'b1;r=1'b0;
#100; 
j=1'b1;k=1'b1;s=1'b1;r=1'b1;
#100; 
$stop;
end
endmodule 

