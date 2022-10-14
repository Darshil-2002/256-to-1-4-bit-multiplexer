module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

    integer j,i;
    wire [3:0] a[255:0];

    always @(*)
        begin
            for(i=0;i<1024;i=i+4)
          begin
              if(sel == (i/4))
                begin
                    out = in[i+:4];
                end
               
          end 
        end
    
endmodule
