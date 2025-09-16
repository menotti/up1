module up_tb;
  reg clock, reset;
  wire we;
  wire [7:0] address, ir, pc, data;
  
  uP proc(clock, reset, data, we, address, pc, ir);
//  mem #("fibo.hex") ram(clock, we, address, data); 
  mem #("fibo.bin") ram(clock, we, address, data); 
  
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars(0);
      reset <= 1; #22; reset <= 0;
      #5000; $finish;
    end

  always
    begin
      clock <= 1; #5; clock <= 0; #5;
    end
endmodule
