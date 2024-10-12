module carrysave_adder_tb;
reg [3:0]p,q,r;
wire [4:0]sum;
wire cout;
carrysave_adder dut(.p(p),.q(q),.r(r),.sum(sum),.cout(cout));
initial begin
$monitor("time=%t sum=%b cout=%b",$time,sum,cout);
p=4'b0001; q=4'b1010; r=4'b0000;
#5;
p=4'b0011; q=4'b1001; r=4'b1010;
#5;
p=4'b0101; q=4'b1111; r=4'b1000;
#5;
$stop;
end
endmodule

