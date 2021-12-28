// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K_H__
#define __mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 36;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K_ram) {
        ram[0] = "0b00000000000000000000000000000100";
        ram[1] = "0b00000000000000000000000000000010";
        ram[2] = "0b00000000000000000000000000000001";
        ram[3] = "0b00000000000000000000000000000100";
        ram[4] = "0b00000000000000000000000000000010";
        ram[5] = "0b00000000000000000000000000000001";
        ram[6] = "0b00000000000000000000000000000100";
        ram[7] = "0b00000000000000000000000000000011";
        ram[8] = "0b00000000000000000000000000000010";
        ram[9] = "0b00000000000000000000000000000010";
        ram[10] = "0b00000000000000000000000000000011";
        ram[11] = "0b00000000000000000000000000000011";
        ram[12] = "0b00000000000000000000000000000100";
        ram[13] = "0b00000000000000000000000000000100";
        ram[14] = "0b00000000000000000000000000000011";
        ram[15] = "0b00000000000000000000000000000001";
        ram[16] = "0b00000000000000000000000000000100";
        ram[17] = "0b00000000000000000000000000000010";
        ram[18] = "0b00000000000000000000000000000100";
        ram[19] = "0b00000000000000000000000000000011";
        ram[20] = "0b00000000000000000000000000000010";
        ram[21] = "0b00000000000000000000000000000010";
        ram[22] = "0b00000000000000000000000000000011";
        ram[23] = "0b00000000000000000000000000000010";
        ram[24] = "0b00000000000000000000000000000010";
        ram[25] = "0b00000000000000000000000000000011";
        ram[26] = "0b00000000000000000000000000000010";
        ram[27] = "0b00000000000000000000000000000011";
        ram[28] = "0b00000000000000000000000000000010";
        ram[29] = "0b00000000000000000000000000000100";
        ram[30] = "0b00000000000000000000000000000010";
        ram[31] = "0b00000000000000000000000000000100";
        ram[32] = "0b00000000000000000000000000000001";
        ram[33] = "0b00000000000000000000000000000011";
        ram[34] = "0b00000000000000000000000000000010";
        ram[35] = "0b00000000000000000000000000000100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 36;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K_ram* meminst;


SC_CTOR(mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K) {
meminst = new mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K_ram("mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K() {
    delete meminst;
}


};//endmodule
#endif
