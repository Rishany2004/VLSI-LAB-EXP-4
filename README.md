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


SR FLIPFLOP:

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/77fb7f38-5649-4778-a987-8468df9ea3c3)

VERILOG CODE:
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

OUTPUT WAVEFORM:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/a526978f-f296-4fcf-a393-a3ee771f77d0)

JK FLIPFLOP:

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/1510e030-4ddc-42b1-88ce-d00f6f0dc7e6)

VERILOG CODE:
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

OUTPUT WAVEFORM:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/98d4b99f-ee49-4f86-a11f-9980c0730760)


T FLIPFLOP:
 
LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/7a020379-efb1-4104-85ee-439d660baa08)

VERILOG CODE:
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

OUTPUT WAVEFORM:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/29b5ee93-84ae-4ae5-824b-51cbaad5ff93)


D FLIPFLOP:

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/dda843c5-f0a0-4b51-93a2-eaa4b7fa8aa0)

VERILOG CODE:
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

OUTPUT WAVEFORM:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/bebc5c6a-aac3-4f84-bf83-f136ad13a3c2)


COUNTER

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/a1fc5f68-aafb-49a1-93d2-779529f525fa)

MOD10 COUNTER:

LOGIC DIAGRAM:

![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/d1549ee5-dced-4421-9d80-8b7ea2f80f2c)

VERILOG CODE:
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

OUTPUT WAVEFORM:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/89012c9f-c589-49f0-98f0-b86d9fa98250)


UP COUNTER:

LOGIC DIAGRAM:

![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/74075112-d402-4c63-924b-e73b62658432)

VERILOG CODE:
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

OUTPUT WAVEFORM:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/254f997f-cd46-42fe-b232-ad51befdb8bb)

DOWN COUNTER:

LOGIC DIAGRAM:

![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/faf3d629-0cb0-404e-bbd2-b2a2265605d9)

VERILOG CODE:
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

OUTPUT WAVEFORM:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/9b6ed4b6-06ac-4afe-b046-8c3b45187c6c)

RIPPLE CARRY COUNTER:

LOGIC DIAGRAM:

![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/b7b8f9a1-2dd6-4cc3-a181-16fd32fe7125)

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

OUTPUT WAVEFORM:
![image](https://github.com/Rishany2004/VLSI-LAB-EXP-4/assets/159290227/411ecdb7-d670-4cb1-a925-0c8464035674)


RESULT:
      Thus the simulation and implementation of sequential logic circuits done and output is verified successfully.




