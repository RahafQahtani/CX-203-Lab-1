`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 04:10:52 PM
// Design Name: 
// Module Name: tb_fulladder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_fulladder;
// Declare testbench signals
logic a, b,cin;
logic s,c;
// Instantiate the andgate module
fulladder dut (
.a(a),
.b(b),
.cin(cin),
.s(s),
.c(c)
);
// Testbench logic
initial begin
// Display header
$display("Time\t a\t b\t f");
$display("------------------------");
// Apply test vectors with $display statements
a = 0; b = 0; cin = 0; #10;
// Display the value of a, b and f along with time
$display("%0t\t %b\t %b\t %b", $time, a, b,cin, s,c);
a  = 0; b = 0; cin = 1; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b,cin ,s,c);
a = 0; b = 1; cin = 0; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b, cin,s,c);
a = 0; b = 1; cin = 1; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b,cin, s,c);
a = 1; b = 0; cin = 0; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b,cin, s,c);
a = 1; b = 0; cin = 1; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b,cin, s,c);
a = 1; b = 1; cin = 0; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b,cin, s,c);
a = 1; b = 1; cin = 1; #10;
$display("%0t\t %b\t %b\t %b", $time, a, b,cin, s,c);

// End simulation
$finish;
end
endmodule
 
