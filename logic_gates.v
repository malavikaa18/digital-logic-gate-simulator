
module logic_gates (
    input wire A,
    input wire B,
    output wire and_out,
    output wire or_out,
    output wire not_out,
    output wire nand_out,
    output wire nor_out,
    output wire xor_out,
    output wire xnor_out
);

    assign and_out  = A & B;
    assign or_out   = A | B;
    assign not_out  = ~A;
    assign nand_out = ~(A & B);
    assign nor_out  = ~(A | B);
    assign xor_out  = A ^ B;
    assign xnor_out = ~(A ^ B);

endmodule
