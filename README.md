# LinGo_FPGA_Prototype
LinGo CGRA overlay on ZYNQ Ultrascale FPGA, validated using `Vivado 2022.2` and `Vitis 2022.2` on `xczu7ev-ffvc1156-2-i`. Details about our FPGA board is [here](https://www.en.alinx.com/Product/SoC-Development-Boards/Zynq-UltraScale-plus-MPSoC/Z7-P.html).

## Vivado

The LinGo CGRA implemented in the project can be found at `CGRASoC32bit/LINGOGENRTL`, including spec and rtl. To replace with your CGRA design, you should copy the RTL to `CGRASoC32bit/CGRA_SoC.srcs/sources_1/imports/rtl/CGRAWithAXI.v`, change the top module name from LinGoWithAXI to CGRAWithAXI. Generate and replace the bram ip accordingly is also needed. Then run syn and implement, export the hardware `xsa` file.

## Vitis SDK

We use tcl to auto generate the vitis sdk software project. On Windows you can replace the path in `vitis/auto_create_vitis/build_vitis.bat` and execute it. On linux you can run 

```
source /opt/Xilinx/Vitis/2022.2/settings64.sh
xsct build_vitis.tcl
```

Then made some changes according to `vitis/ImportantRead.txt`
