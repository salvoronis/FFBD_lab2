`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 02:13:34 AM
// Design Name: 
// Module Name: gunTest
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gunTest;

reg reset_reg, clk_reg;
wire clk, reset;
reg [7:0] a;
reg [7:0] b;
wire busy;
wire [7:0] y_bo;

gun gun(
    .rst_i(reset),
    .clk_i(clk_reg),
    .a_in(a),
    .b_in(b),
    .busy(busy),
    .y_out(y_bo)
);

assign reset = reset_reg;
assign clk = clk_reg;

initial begin
    clk_reg = 1;
    forever
        #10 clk_reg = ~clk_reg;
end

initial begin
    a <= 0;
    b <= 0;
    reset_reg <= 1;
end

always @(posedge clk_reg) begin
    if (reset_reg) begin
        reset_reg = 0;
    end
    
    if (!busy) begin
        $display("a is %d, b is %d, result %d",a,b,y_bo);
        if (!reset_reg) begin
            a <= a + 1;
            b <= b + 1;
            reset_reg <= 1;
        end
    end
end

endmodule
