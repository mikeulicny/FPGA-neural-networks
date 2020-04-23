module tb_NAND;

reg a;
reg b;
wire z;

NAND uut(a, b, z);
    initial begin

    a = 0; b = 0; #100;
    a = 0; b = 1; #100;
    a = 1; b = 0; #100;
    a = 1; b = 1; #100;
    end

endmodule
