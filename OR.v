
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

