module ripplecarry_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
ripplecarry_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("time=%t sum=%b cout=%b",$time,sum,cout);
cin=0;
a=4'b0000; b=4'b1010;
#5;
a=4'b1111; b=4'b0101;
#5
$stop;
end
endmodule
