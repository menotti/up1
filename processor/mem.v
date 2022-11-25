module mem #(parameter filename = "ram.hex")
          (input clock, we,
           input [7:0] address,
           inout [7:0] data);

  reg [7:0] RAM[0:255];

  initial
    // $readmemh(filename, RAM); //Hex file
    $readmemb(filename, RAM); //Bin file

  assign data = we ? 'bz : RAM[address]; 

  always @(posedge clock)
    if (we) RAM[address] <= data;
endmodule

