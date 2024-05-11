EXP NO 4: SIMULATION AND IMPLEMENTATION OF SEQUENTIAL LOGIC CIRCUITS

DATE:

AIM: 
        To simulate and synthesis SR, JK, T, D - FLIPFLOP, COUNTER DESIGN using Xilinx ISE.

APPARATUS REQUIRED:

       Xilinx 14.7
       Spartan6 FPGA

PROCEDURE:

STEP:1  Start  the Xilinx navigator, Select and Name the New project.

STEP:2  Select the device family, device, package and speed.       

STEP:3  Select new source in the New Project and select Verilog Module as the Source type.                       

STEP:4  Type the File Name and Click Next and then finish button. Type the code and save it.

STEP:5  Select the Behavioral Simulation in the Source Window and click the check syntax.                       

STEP:6  Click the simulation to simulate the program and  give the inputs and verify the outputs as per the truth table.               

STEP:7  Select the Implementation in the Sources Window and select the required file in the Processes Window.

STEP:8  Select Check Syntax from the Synthesize  XST Process. Double Click in the  FloorplanArea/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained. 

STEP:9  In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu.

STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here.

STEP:11  On the board, by giving required input, the LEDs starts to glow light, indicating the output.

SR FLIPFLOP

LOGIC DIAGRAM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/77fb7f38-5649-4778-a987-8468df9ea3c3)

VERILOG CODE
```
module SRflipflop(s,r,clk,rst,q);
input s,r,clk,rst;
output q;
reg q;
always@(posedge clk)
begin
 if(rst)
 q<=1'b0;
 else
  begin
    case({s,r})
     2'b00:q<=q;
     2'b01:q<=1'b0;
     2'b10:q<=1'b1;
     2'b11:q<=1'bx;
    default:q<=1'bx;
    endcase
    end
   end
 endmodule
```

OUTPUT WAVEFORM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159290227/aa96819d-0648-49cb-912d-9d2e5aa758e1)

JK FLIPFLOP

LOGIC DIAGRAM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/1510e030-4ddc-42b1-88ce-d00f6f0dc7e6)

VERILOG CODE
```
module jkflipflop(j,k,clk,rst,q);
input j,k,clk,rst;
output q;
reg q;
always@(posedge clk)
begin
 if(rst)
 q<=1'b0;
 else
  begin
    case({j,k})
     2'b00:q<=q;
     2'b01:q<=1'b0;
     2'b10:q<=1'b1;
     2'b11:q<=~q;
    default:q<=1'bx;
    endcase
    end
   end
 endmodule
```

OUTPUT WAVEFORM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159290227/f6b655e4-85fe-4431-8ede-d843ad466454)


T FLIPFLOP

LOGIC DIAGRAM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/7a020379-efb1-4104-85ee-439d660baa08)

VERILOG CODE
```
module Tflipflop(t,clk,rst,q);
input t,clk,rst;
output q;
reg q;
always@(posedge clk)
begin
 if(rst)
 q<=0;
 else if(t)
 q<=~q;
 else
 q<=q;
end
endmodule
```

OUTPUT WAVEFORM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159290227/b606ae1d-5d86-492f-8135-30bbf25c27cd)


D FLIPFLOP

LOGIC DIAGRAM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/dda843c5-f0a0-4b51-93a2-eaa4b7fa8aa0)

VERILOG CODE
```
module dflipflop(d,clk,rst,q);
input d,clk,rst;
output reg q;
always @(posedge clk)
begin 
if(rst)
q <=1'b0;
else
q <= d;
end
endmodule
```

OUTPUT WAVEFORM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159290227/a56db801-2e82-4f14-b7bf-b4e831c578da)



COUNTER

LOGIC DIAGRAM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/a1fc5f68-aafb-49a1-93d2-779529f525fa)

MOD10 COUNTER

VERILOG CODE
```
module mod10(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst|count==4'b1001)
count<=4'b0;
else 
count<=count+1;
end
endmodule
```

OUTPUT WAVEFORM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159290227/6a82c451-b90a-40f7-b44e-5c4e65d8e486)

UP COUNTER
VERILOG CODE 
```
module upcounter(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst)
count<=4'b0;
else 
count<=count+1;
end
endmodule

```
OUTPUT WAVEFORM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159290227/3a664e18-98be-4abd-aee2-4e13b1546efc)


DOWN COUNTER

VERILOG CODE 
```
module downcounter(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst)
count<=4'b0;
else 
count<=count-1;
end
endmodule
```

OUTPUT WAVEFORM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159290227/1f486d37-f54d-4bdf-9ad8-e071c3208ee6)


RIPPLE CARRY COUNTER

VERILOG CODE 
```
module jkff(j,k,clock,reset,q,qb);
input j,k,clock,reset;
output reg q,qb;
always@(negedge clock)
begin
case({reset,j,k})
3'b100 :q=q;
3'b101 :q=0;
3'b110 :q=1;
3'b111 :q=~q;
default :q=0;
endcase
qb<=~q;
end
endmodule
module rcacount(j,k,clock,reset,q,qb);
input j,k,clock,reset;
output wire [3:0]q,qb;
jkff JK1(j,k,clock,reset,q[0],qb[0]);
jkff JK2(j,k,q[0],reset,q[1],qb[1]);
jkff JK3(j,k,q[1],reset,q[2],qb[2]);
jkff JK4(j,k,q[2],reset,q[3],qb[3]);
endmodule
```

OUTPUT WAVEFORM
![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159290227/da39c8fd-3ca8-4f48-920a-bfccbab78d7a)





RESULT

           Thus the simulation and implementation of sequential logic circuits done and output is verified successfully.


