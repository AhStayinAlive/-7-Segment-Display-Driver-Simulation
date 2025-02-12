// Autogenerated netlist code from CircuitVerse for a 7-segment display driver
// For simulation, use Icarus Verilog 0.9.7 at https://www.edaplayground.com/
// If you find bugs or have suggestions, please report at https://github.com/CircuitVerse/CircuitVerse/issues/new/choose

module DE1(
    output A, B, C, D, E, F, G,  // Segments of the 7-segment display
    input W, X, Y, Z             // Binary encoded input
);

    // Internal wires for logical connections
    wire notW, notX, notY, notZ;
    wire or_15_out, or_16_out, or_14_out, or_13_out, or_12_out, or_11_out, or_10_out, or_9_out;
    wire or_8_out, or_7_out, or_6_out, or_5_out, or_4_out, or_3_out, or_2_out, or_1_out, or_0_out;
    wire and_6_out, and_5_out, and_4_out, and_3_out, and_2_out, and_1_out, and_0_out;

    // Inverting the inputs
    assign notW = ~W;
    assign notX = ~X;
    assign notY = ~Y;
    assign notZ = ~Z;

    // OR gate combinations
    assign or_15_out = W | X | Y | Z;
    assign or_16_out = W | notX | Y;
    assign or_14_out = or_16_out;  // Duplicate of or_16_out
    assign or_13_out = W | notY | Z;
    assign or_12_out = notW | Y | Z;
    assign or_11_out = notW | notY;
    assign or_10_out = W | notX | notY;
    assign or_9_out = notX | Y;
    assign or_8_out = notW | X | notY | Z;
    assign or_7_out = or_16_out;  // Duplicate of or_16_out
    assign or_6_out = W | X | notY | Z;
    assign or_5_out = notW | X | Y | Z;
    assign or_4_out = W | X | Y | notZ;
    assign or_3_out = notW | notX | notY | Z;
    assign or_2_out = notW | notY | notZ;
    assign or_1_out = notW | X | notY | Z;
    assign or_0_out = W | notX | Y | Z;

    // AND gate combinations
    assign and_6_out = or_2_out & or_15_out & or_16_out;
    assign and_5_out = or_12_out & or_2_out & or_13_out & or_14_out;
    assign and_4_out = or_9_out & or_10_out & or_11_out;
    assign and_3_out = or_2_out & or_7_out & or_8_out;
    assign and_2_out = or_2_out & or_5_out & or_6_out;
    assign and_1_out = or_2_out & or_3_out & or_4_out;
    assign and_0_out = or_0_out & or_1_out & or_2_out;

    // Assigning outputs to the 7-segment display
    assign A = and_0_out;
    assign B = and_1_out;
    assign C = and_2_out;
    assign D = and_3_out;
    assign E = and_4_out;
    assign F = and_5_out;
    assign G = and_6_out;

endmodule
