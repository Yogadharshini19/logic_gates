module flip_flops(j,k,s,r,d,t,q_jk,qb_jk,q_sr,qb_sr,q_d,qb_d,q_t,qb_t,clk,rst);
input  s,r,j,k,d,t,clk,rst;
output q_jk,qb_jk,q_sr,qb_sr,q_d,qb_d,q_t,qb_t;
jk_ff f1(j,k,clk,rst,q_jk,qb_jk);  
sr_ff f2(s,r,clk,rst,q_sr,qb_sr);  
d_ff f3(d,clk,rst,q_d,qb_d);      
t_ff f4(t,clk,rst,q_t,qb_t);        
endmodule

module jk_ff(j,k,clk,rst,q_jk,qb_jk);
input j,k,clk,rst;
output reg q_jk,qb_jk;
always @(posedge clk or posedge rst) 
if (rst)
begin
q_jk = 0;
qb_jk = ~q_jk;
end 
else
begin
case ({j,k})
2'b00: begin q_jk = q_jk;   qb_jk = ~q_jk; end
2'b01: begin q_jk = 1'b0;   qb_jk = 1'b1; end
2'b10: begin q_jk = 1'b1;   qb_jk = 1'b0; end 
2'b11: begin q_jk = qb_jk;  qb_jk = ~qb_jk; end
endcase
end
endmodule

module sr_ff(s,r,clk,rst,q_sr,qb_sr);
input s,r,clk,rst;
output reg q_sr,qb_sr;
always @(posedge clk or posedge rst) 
if (rst)
begin
q_sr = 0;
qb_sr = ~q_sr;
end
else
begin
case ({s,r})
2'b00: begin q_sr = q_sr; qb_sr = ~q_sr; end
2'b01: begin q_sr = 1'b0; qb_sr = 1'b1; end
2'b10: begin q_sr = 1'b1; qb_sr = 1'b0; end
2'b11: begin q_sr = 1'bz; qb_sr = 1'bz; end  
endcase
end
endmodule

module d_ff(d,clk,rst,q_d,qb_d);
input d,clk,rst;
output reg q_d, qb_d;
always @(posedge clk or posedge rst)  
if (rst) 
begin
q_d = 0;
qb_d = ~q_d;
end 
else begin
q_d = d;
qb_d = ~q_d;
end
endmodule

module t_ff(t,clk,rst,q_t,qb_t);
input t, clk, rst;
output reg q_t, qb_t;
always @(posedge clk or posedge rst)  
if (rst) 
begin
q_t = 0;
qb_t = ~q_t;
end 
else begin
if (t)
q_t = ~q_t; 
qb_t = ~q_t;
end
endmodule
