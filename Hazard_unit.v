module hazard_unit(rst, RegWriteM, RegWriteW,MemReadM, RD_M, RD_W, Rs1_E, Rs2_E, ForwardAE, ForwardBE,StallF, StallD, FlushE);

    // Declaration of I/Os
    input rst, RegWriteM, RegWriteW,MemReadM;
    input [4:0] RD_M, RD_W, Rs1_E, Rs2_E;
    output [1:0] ForwardAE, ForwardBE;
    output StallF, StallD, FlushE;

    
    assign ForwardAE = (rst == 1'b0) ? 2'b00 : 
                       ((RegWriteM == 1'b1) & (RD_M != 5'h00) & (RD_M == Rs1_E)) ? 2'b10 :
                       ((RegWriteW == 1'b1) & (RD_W != 5'h00) & (RD_W == Rs1_E)) ? 2'b01 : 2'b00;
                       
    assign ForwardBE = (rst == 1'b0) ? 2'b00 : 
                       ((RegWriteM == 1'b1) & (RD_M != 5'h00) & (RD_M == Rs2_E)) ? 2'b10 :
                       ((RegWriteW == 1'b1) & (RD_W != 5'h00) & (RD_W == Rs2_E)) ? 2'b01 : 2'b00;
                       
    wire load_use_hazard;
    assign load_use_hazard = (MemReadM & ((RD_M == Rs1_E) | (RD_M == Rs2_E)));
                             
    assign StallF = load_use_hazard;
    assign StallD = load_use_hazard;
    assign FlushE = load_use_hazard;

endmodule