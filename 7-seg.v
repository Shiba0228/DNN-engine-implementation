module sseg_top(
    input signed[18:0] i,
    input clk1,
    input reset1,
    output reg[6:0] seg1,
    output reg[3:0] an1
    );

    wire signed[17:0] a;
    wire signed[17:0] b,c;
    assign a = i / 100;
    assign b = (i / 10) %10;
    assign c = i % 10;


    reg [31:0] cout;
    reg [3:0] s;

    always @(posedge clk1 or posedge reset1)
    begin
        if(reset1)
            cout <= 0;
        else
            cout <= cout + 1;
     end
     
    always @(*)
    begin
        case(cout[19:18])
        2'b00: begin
               an1 = 4'b1110;
               s = c;
               end
        2'b01: begin
               an1 = 4'b1101;
               s = b;
               end
        2'b10: begin
               an1 = 4'b1011;
               s = a;
               end
        default: begin
                 an1 = 4'b0111;
                 s = 4'b0000;
                 end
        endcase
     end

    always @(*)
    begin
    case(s)
           4'd0: seg1[6:0] = 7'b1000000;    // digit 0
           4'd1: seg1[6:0] = 7'b1111001;    // digit 1
           4'd2: seg1[6:0] = 7'b0100100;    // digit 2
           4'd3: seg1[6:0] = 7'b0110000;    // digit 3
           4'd4: seg1[6:0] = 7'b0011001;    // digit 4
           4'd5: seg1[6:0] = 7'b0010010;    // digit 5
           4'd6: seg1[6:0] = 7'b0000010;    // digit 6
           4'd7: seg1[6:0] = 7'b1111000;    // digit 7
           4'd8: seg1[6:0] = 7'b0000000;    // digit 8
           4'd9: seg1[6:0] = 7'b0010000;    // digit 9
           default: seg1[6:0] = 7'b1000000; // digit 0
        endcase
    end
    
    

    
    

           
endmodule