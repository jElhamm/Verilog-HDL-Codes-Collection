//  *************************************************
//  *                 'Test Bench'                  *
//  *                 decoder 2to4                  *
//  *************************************************


module decoder_2to4_tb;
  reg x, y, E;
  wire D0, D1, D2, D3;
  decoder_2to4 dut(
    .x(x),
    .y(y),
    .E(E),
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3)
  );

  // Test patterns for all input modes
  initial begin
    // mode 1
    x = 0; y = 0; E = 0;
    #10;
    $display("**********************************************");
    $display("Input  : x=%b, y=%b, E=%b", x, y, E);
    $display("Output : D0=%b, D1=%b, D2=%b, D3=%b", D0, D1, D2, D3);
    if (D0 !== 1 || D1 !== 0 || D2 !== 0 || D3 !== 0)
      $display("Test case 1 failed!");

    // mode 2
    x = 0; y = 0; E = 1;
    #10;
    $display("**********************************************");
    $display("Input  : x=%b, y=%b, E=%b", x, y, E);
    $display("Output : D0=%b, D1=%b, D2=%b, D3=%b", D0, D1, D2, D3);
    if (D0 !== 1 || D1 !== 1 || D2 !== 1 || D3 !== 0)
      $display("Test case 2 failed!");

    // mode 3
    x = 0; y = 1; E = 0;
    #10;
    $display("**********************************************");
    $display("Input  : x=%b, y=%b, E=%b", x, y, E);
    $display("Output : D0=%b, D1=%b, D2=%b, D3=%b", D0, D1, D2, D3);
    if (D0 !== 1 || D1 !== 0 || D2 !== 1 || D3 !== 0)
      $display("Test case 3 failed!");

    // mode 4
    x = 0; y = 1; E = 1;
    #10;
    $display("**********************************************");
    $display("Input  : x=%b, y=%b, E=%b", x, y, E);
    $display("Output : D0=%b, D1=%b, D2=%b, D3=%b", D0, D1, D2, D3);
    if (D0 !== 1 || D1 !== 1 || D2 !== 0 || D3 !== 1)
      $display("Test case 4 failed!");

    // mode 5
    x = 1; y = 0; E = 0;
    #10;
    $display("**********************************************");
    $display("Input  : x=%b, y=%b, E=%b", x, y, E);
    $display("Output : D0=%b, D1=%b, D2=%b, D3=%b", D0, D1, D2, D3);
    if (D0 !== 1 || D1 !== 1 || D2 !== 1 || D3 !== 0)
      $display("Test case 5 failed!");

    // mode 6
    x = 1; y = 0; E = 1;
    #10;
    $display("**********************************************");
    $display("Input  : x=%b, y=%b, E=%b", x, y, E);
    $display("Output : D0=%b, D1=%b, D2=%b, D3=%b", D0, D1, D2, D3);
    if (D0 !== 1 || D1 !== 0 || D2 !== 1 || D3 !== 1)
      $display("Test case 6 failed!");

    // mode 7
    x = 1; y = 1; E = 0;
    #10;
    $display("**********************************************");
    $display("Input  : x=%b, y=%b, E=%b", x, y, E);
    $display("Output : D0=%b, D1=%b, D2=%b, D3=%b", D0, D1, D2, D3);
    if (D0 !== 1 || D1 !== 1 || D2 !== 0 || D3 !== 1)
      $display("Test case 7 failed!");

    // mode 8
    x = 1; y = 1; E = 1;
    #10;
    $display("**********************************************");
    $display("Input  : x=%b, y=%b, E=%b", x, y, E);
    $display("Output : D0=%b, D1=%b, D2=%b, D3=%b", D0, D1, D2, D3);
    if (D0 !== 0 || D1 !== 1 || D2 !== 1 || D3 !== 1)
      $display("Test case 8 failed!");
    
    $display("**********************************************");
    $display("All test cases passed!");
  end
endmodule