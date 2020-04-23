// File: XOR.v
//
// Date: Tue Apr 16 18:24:00 2019

`timescale 1ns/10ps

module OR (
    a,
    b,
    z
);
// input: a, b
// output: z

input a;
input b;
output z;
reg z;

always @(a, b) begin: OR_OR_BEHAVE
    integer activation;
    activation = (((10 * a) + (10 * b)) - 10);
    if ((activation < 0)) begin
        z = 0;
    end
    else begin
        z = 1;
    end
end

endmodule


module NAND (
    a,
    b,
    z
);
// input: a, b
// output z

input a;
input b;
output z;
reg z;

always @(a, b) begin: NAND_NAND_BEHAVE
    integer activation;
    activation = ((((-10) * $signed({1'b0, a})) + ((-10) * $signed({1'b0, b}))) + 10);
    if ((activation < 0)) begin
        z = 0;
    end
    else begin
        z = 1;
    end
end

endmodule


module XOR (
    a,
    b,
    z
);
// input: a, b
// output: z

input a;
input b;
output z;
reg z;
wire f0, f1;

NAND nand_gate(.a(a), .b(b), .z(f0));
OR or_gate(.a(a), .b(b), .z(f1));

always @(f0, f1) begin: XOR_XOR_BEHAVE
    integer activation;
    activation = (((10 * $signed({1'b0, f0})) + (10 * $signed({1'b0, f1}))) - 15);
    if ((activation < 0)) begin
        z = 0;
    end
    else begin
        z = 1;
    end
end

endmodule