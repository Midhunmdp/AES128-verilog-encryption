module testbench_aes128;

reg [0:127] key,plaintext;
wire [0:127] en_msg;

aes128_encryption m0(plaintext,key,en_msg);

initial
begin
	$monitor("%h",en_msg); ////////
	plaintext ={8'h32,8'h43,8'hf6,8'ha8,8'h88,8'h5a,8'h30,8'h8d,8'h31,8'h31,8'h98,8'ha2,8'he0,8'h37,8'h07,8'h34};  
	key ={8'h2b,8'h7e,8'h15,8'h16,8'h28,8'hae,8'hd2,8'ha6,8'hab,8'hf7,8'h15,8'h88,8'h09,8'hcf,8'h4f,8'h3c};
	#100;
end
endmodule
