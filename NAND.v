
`timescale 1ns/10ps

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
