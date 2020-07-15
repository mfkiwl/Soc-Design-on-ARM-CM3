module cortexm3_soc_tb;
    reg HCLK;
    reg HRESETn;
    initial begin
	      HCLK = 0;
	      HRESETn = 0;

	      #103 HRESETn = 1;
	end

	always #5 HCLK = ~HCLK;

//port map
cortexm3_soc cortexm3_soc_i0 (
.HCLK(HCLK),
.HRESETn(HRESETn)
);

endmodule
