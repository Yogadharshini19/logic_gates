module carryskip_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
carryskip_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
cin=0;
a=4'b1111; b=4'b0100;
#5;
a=4'b1001; b=4'b0110;
#5;
cin=1;
a=4'b0001; b=4'b0000;
#5;
a=4'b0000; b=4'b0110;
#5;
$stop;
end
endmodule
