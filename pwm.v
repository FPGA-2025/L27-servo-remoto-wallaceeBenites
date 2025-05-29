module PWM (
    input wire clk,
    input wire rst_n,
    input wire [31:0] duty_cycle, // duty cycle final = duty_cycle / period
    input wire [31:0] period, // pwm_freq = clk_freq / period
    output reg pwm_out
);

//insira o seu código aqui
    
endmodule