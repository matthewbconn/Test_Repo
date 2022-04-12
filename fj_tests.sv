// SP21 - EE-552
// Moises Herrera
// HW3 Q2
// 16-stages linear pipeline  

// instructions: look for -5- TODO tasks.

`timescale 1ns/100ps
import SystemVerilogCSP::*;

module fj_tests ();

always begin
	#1;
	$display("Forking at t = %d",$time);
	fork
		begin
			#1;
			$display("P1 finishes at time = %d",$time);
		end // p1

		begin
			#3;
			$display("P2 finishes at time = %d",$time);
		end // p2

		begin
			#10;
			$display("P3 finishes at time = %d",$time);
		end // p3


	join_any

	$display("Join_any at t = $d",$time);

end // always

initial begin
	#50;
	$stop;
end

endmodule
