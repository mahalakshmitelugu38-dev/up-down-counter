module up_down_counter (
    input  wire       clk,
    input  wire       reset,
    input  wire       up_down,
    output reg  [3:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;
    else if (up_down)
        count <= count + 1'b1;   // Up count
    else
        count <= count - 1'b1;   // Down count
end