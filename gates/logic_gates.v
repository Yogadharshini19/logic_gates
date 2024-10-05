 module logic_gates(a,b,p,q,r,s,t,c,d);
input a,b;
output p,q,r,s,t,c;
output d;
and_gate a1(a,b,p);
nand_gate a2(a,b,q);
or_gate a3(a,b,r);
nor_gate a4(a,b,s);
xor_gate a5(a,b,t);
xnor_gate a6(a,b,c);
not_gate a7(a,d);
endmodule

 module and_gate(a,b,p);
 input a,b;
 output p;
 assign p=a&b;
 endmodule
 
 module nand_gate(a,b,q);
 input a,b;
 output q;
 assign q=~(a&b);
 endmodule
 
 module or_gate(a,b,r);
 input a,b;
 output r;
 assign r=a|b;
 endmodule
 
 module nor_gate(a,b,s);
 input a,b;
 output s;
 assign s=~(a|b);
 endmodule
 
 module xor_gate(a,b,t);
 input a,b;
 output t;
 assign t=a^b;
 endmodule
 
 module xnor_gate(a,b,c);
 input a,b;
 output c;
 assign c=~(a^b);
 endmodule
 
 module not_gate(a,d);
 input a;
 output d;
 assign d=~a;
 endmodule
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 