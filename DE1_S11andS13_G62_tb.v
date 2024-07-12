module TestBench();

  reg W, X, Y, Z;

  wire A, B, C, D, E, F, G;

  DE1  DUT1(A, B, C, D, E, F, G, W, X, Y, Z);

  initial begin
  $dumpfile("DE1_S11andS13_G62.vcd");
	$dumpvars(0, TestBench);

	$display("Group #62"); // Write your group number here

    W = 0;
    X = 0;
    Y = 0;
    Z = 0;

    #15
    $display("0. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1111110
    #15
	
    W = 0;
    X = 1;
    Y = 0;
    Z = 0;

    #15
    $display("1. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 0110000
    #15

    W = 0;
    X = 0;
    Y = 1;
    Z = 0;

    #15
    $display("2. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1101101
    #15

    W = 1;
    X = 0;
    Y = 0;
    Z = 0;

    #15
    $display("2. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1101101
    #15

    W = 0;
    X = 1;
    Y = 1;
    Z = 0;

    #15
    $display("3. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1111001
    #15

    W = 1;
    X = 1;
    Y = 0;
    Z = 0;

    #15
    $display("3. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1111001
    #15

    W = 1;
    X = 0;
    Y = 1;
    Z = 0;

    #15
    $display("4. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 0110011
    #15

    W = 1;
    X = 1;
    Y = 1;
    Z = 0;

    #15
    $display("5. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1011011
    #15

    W = 0;
    X = 0;
    Y = 0;
    Z = 1;

    #15
    $display("6. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1011111
    #15

    W = 0;
    X = 1;
    Y = 0;
    Z = 1;

    #15
    $display("7. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1110001
    #15

    W = 0;
    X = 0;
    Y = 1;
    Z = 1;

    #15
    $display("8. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1111111
    #15

    W = 1;
    X = 0;
    Y = 0;
    Z = 1;

    #15
    $display("8. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1111111
    #15

    W = 0;
    X = 1;
    Y = 1;
    Z = 1;

    #15
    $display("9. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1111011
    #15

    W = 1;
    X = 1;
    Y = 0;
    Z = 1;

    #15
    $display("9. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 1111011
    #15

    W = 1;
    X = 0;
    Y = 1;
    Z = 1;

    #15
    $display("10. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 0000000
    #15

    W = 1;
    X = 1;
    Y = 1;
    Z = 1;

    #15
    $display("11. ABCDEFG = %b%b%b%b%b%b%b", A,B,C,D,E,F,G); //Correct answer is 0000000
    #15
	
	$finish;

  end
endmodule
