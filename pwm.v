module PWM (
    input wire clk,
    input wire rst_n,
    input wire [31:0] duty_cycle, 
    input wire [31:0] period, 
    output reg pwm_out
);


    reg [31:0] count;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count   <= 32'b0;
            pwm_out <= 1'b0;
        end else begin
            pwm_out <= (count < duty_cycle)  ? 1'b1    : 1'b0;
            count   <= (count < period-1)    ? count+1 : 32'b0;
        end
    end
endmodule