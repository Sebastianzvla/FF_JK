module FF_JK(
input iJ, 
input iK, 
input iClk,
output oQ
);
reg rQ;

assign oQ = rQ;


always @(posedge iClk)
begin
if(iJ == 0 && iK == 0)
 	rQ = rQ;
else if(iJ == 1 && iK == 0)
	rQ = 1'd1;
else if(iJ == 0 && iK == 1)
	rQ = 1'd0;
else if(iJ == 1 && iK == 1)
	rQ = !rQ;
end
endmodule

