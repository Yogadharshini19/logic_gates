module carryselect_adder_tb;
reg [3:0]a,b;
reg cin,cin1,cin0;
wire [3:0]sum;
wire cout;
carryselect_adder dut(.a(a),.b(b),.cin(cin),.cin1(cin1),.cin0(cin0),.sum(sum),.cout(cout));
initial begin
cin=1'b0;
a=4'b0011;  b=4'b1010; cin0=1'b0; cin1=1'b1;
#5;
a=4'b0111;  b=4'b1110; cin0=1'b0; cin1=1'b1;
#5;
cin=1'b1;
a=4'b0001;  b=4'b1011; cin1=1'b1; cin0=1'b0;
#5;
a=4'b0011;  b=4'b1110;  cin1=1'b1; cin0=1'b0;
#5;
$stop;
end
endmodule

