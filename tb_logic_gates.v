
`timescale 1ns/1ps

module tb_logic_gates;

    reg A, B;

    wire and_out, or_out, not_out;
    wire nand_out, nor_out, xor_out, xnor_out;

    integer i;
    integer errors;

    logic_gates dut (
        .A(A),
        .B(B),
        .and_out(and_out),
        .or_out(or_out),
        .not_out(not_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out)
    );

    initial begin
        $dumpfile("logic_gates.vcd");
        $dumpvars(0, tb_logic_gates);

        errors = 0;

        $display("A B | AND OR NOT_A NAND NOR XOR XNOR");
        $display("--------------------------------------");

        for (i = 0; i < 4; i = i + 1) begin
            {A, B} = i;
            #10;

            $display("%b %b |  %b   %b    %b     %b    %b   %b    %b",
                A, B, and_out, or_out, not_out,
                nand_out, nor_out, xor_out, xnor_out);

            if (and_out !== (A & B)) errors = errors + 1;
            if (or_out !== (A | B)) errors = errors + 1;
            if (not_out !== (~A)) errors = errors + 1;
            if (nand_out !== (~(A & B))) errors = errors + 1;
            if (nor_out !== (~(A | B))) errors = errors + 1;
            if (xor_out !== (A ^ B)) errors = errors + 1;
            if (xnor_out !== (~(A ^ B))) errors = errors + 1;
        end

        if (errors == 0)
            $display("PASS: All gate checks passed.");
        else
            $display("FAIL: %0d gate checks failed.", errors);

        $finish;
    end

endmodule
