module Multiplicador(Idle, Done, Produto,Clk,St, Multiplicando, Multiplicador);
	
	input Clk, St;
	input [3:0] Multiplicador, Multiplicando;
	output reg Idle,Done;
	output reg [3:0] Produto; 
	wire [4:0] Load,K,Sh,Ad,M;
	Counter MyCounter(Load,Clk,K);
	Control MyControl(Idle, Done, St, Load, Sh, Ad, Clk,K,M);
	Adder(); //MyAdder(, Multiplicando, )

endmodule

