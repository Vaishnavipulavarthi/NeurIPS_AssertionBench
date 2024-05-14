`timescale 1ns/1ps
module barrel_shifter_simple  (
                                x         ,
                                y         ,
                                z         ,
                                c         ,
                                clk       ,
                                direction
                              );
  parameter DWIDTH = 8;                            

  input       [DWIDTH-1:0]    x         ;
  input       [DWIDTH-1:0]    y         ;
  output      [DWIDTH-1:0]    z         ;
  output                      c         ;
  input                       clk       ;
  input                       direction ;
  
  reg         [DWIDTH-1:0]    z         ;
  reg                         c         ;

  reg         [DWIDTH-1:0]    y_tmp     ;

  
  always @(negedge clk)
  begin

    z = x;
    c = 0;
    
    for (y_tmp={{DWIDTH-3{1'b0}},y[2:0]}; y_tmp > 0; y_tmp = y_tmp - 1)
    begin
    
      


       if (direction)
       begin
         z = {z[0], z[DWIDTH-1:1]};
         c = z[0]                 ;
       end
       else
       begin
         z = {z[DWIDTH-2:0], z[DWIDTH-1]} ;
         c = z[DWIDTH-2]                  ;
       end
    end
  
  end
  
endmodule