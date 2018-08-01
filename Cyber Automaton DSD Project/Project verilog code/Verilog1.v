module counter(clock, stepperPins1,stepperPins2,stepperPins3,stepperPins4, sw1 ,sw2,sw3,sw4,sw5,sw6,sw7,sw8);
 
/////////// 3 bit/LED counter ///////////////
//localparam SECOND_DIVIDER = 50000000;
//localparam SECOND_DIVIDER1 = 5000000;
input sw1 ;
input sw2 ;
input sw3 ;
input sw4 ;
input sw5 ;
input sw6 ;
input sw7 ;
input sw8 ;
input clock;

//unused part from the sample code that we found


/////////// RC Servo ///////////////
//output [2:0] led;
//reg [2:0] secondsCounter;
//reg [2:0] secondsCounter1;

//reg [18:0] clockCount1;
//reg [18:0] clockCount2;
//always @ (posedge clock)
//begin
//    if(secondsCounter == 3'b111 || reset == 0)
//        secondsCounter <= 1'b0;
// 
//    clockCount1 = clockCount1 + 1'b1;
//    if(clockCount1 == SECOND_DIVIDER)
//        begin
//            clockCount1 <= 1'b0;
//            secondsCounter <= secondsCounter + 1'b1;
//        end
//	// if(secondsCounter == 3'b111 || reset == 0)
//   //     secondsCounter <= 1'b0;
// 
//    clockCount2 = clockCount2 + 1'b1;
//    if(clockCount2 == SECOND_DIVIDER1)
//        begin
//            clockCount1 <= 1'b0;
//            secondsCounter1 <= secondsCounter1 + 1'b1;
//        end
//end
 //module in always block??
//assign led = ~secondsCounter;

/////////// Stepper Motor - half step method (using 28BYJ-48) ///////////////
 
//parameter STEPPER_DIVIDER = 50000; // every 1ms
//parameter STEPPER_DIVIDER2 = 100000000;
//output [15:0] stepperPins;
//reg [15:0] stepperPins;


// the part that we took and modifyed to get our stepper motors going 


output reg [3:0] stepperPins1;
output reg [3:0] stepperPins2;
output reg [3:0] stepperPins3;
output reg [3:0] stepperPins4;
//2 clocks for the 2 stepper motor types ,clk3 for the small stepper and clk4 is for the big stepper
reg [31:0] clockCount3;
reg [31:0] clockCount4;
reg [1:0] step; 
reg [2:0] step3;
// 4 positions for half steps

always @ (posedge clock)
begin
//small
	if(clockCount3 >= 50000)
		begin
				//step1 <= step1 + 1'b1;
				//step2 <= step2 + 1'b1;
				step3 <= step3 + 1'b1;
//				step4 <= step4 + 1'b1;
				clockCount3 <= 1'b0;
		end
	else

	clockCount3 <= clockCount3 + 1'b1;
//big		
	if(clockCount4 >=5000000)
		begin
				step <= step + 1'b1;
				//step2 <= step2 + 1'b1;
				//step3 <= step3 + 1'b1;
				//step4 <= step4 + 1'b1;
			clockCount4 <= 1'b0;
		end
	else
		clockCount4 <= clockCount4 + 1'b1;
//		
end
//4'b1000000000000000;
//4'b1100000000000000;
//4'b0100000000000000;
//4'b0110000000000000;

//here we assign the stepper coils to work in order in order to achieve the full rotation clock and anticlock wise (reserse direction was achived by mirroring the values from the middle of the 4 bit stepperpins)
//using switches 
always @ (step,step3)
begin	
	if(sw1 == 1)
	begin 
		case(step)
			0: stepperPins1 <= 4'b1100;
			1: stepperPins1 <= 4'b0110;
			2: stepperPins1 <= 4'b0011;
			3: stepperPins1 <= 4'b1001;
		   //4: stepperPins <= 4'b0000000000001100;
		   //5: stepperPins <= 4'b0000000000000110;
		   //6: stepperPins <= 4'b0000000000000011;
	   //7: stepperPins <= 4'b0000000000001001;
		endcase
   end
	if(sw2 == 1)
	begin 
		case(step)
			0: stepperPins1 <= 4'b0011;
			1: stepperPins1 <= 4'b0110;
			2: stepperPins1 <= 4'b1100;
			3: stepperPins1 <= 4'b1001;
			
			 //4: stepperPins <= 4'b0010;
			 //5: stepperPins <= 4'b0011;
			 //6: stepperPins <= 4'b0001;
			 //7: stepperPins <= 4'b1001;
		endcase
   end
	if(sw3 == 1)
	begin 
		case(step)
			0: stepperPins2 <= 4'b1100;
			1: stepperPins2 <= 4'b0110;
			2: stepperPins2 <= 4'b0011;
			3: stepperPins2 <= 4'b1001;
			//4: stepperPins <= 4'b0010000000000000;
//			// 5: stepperPins <= 4'b0011000000000000;
//			// 6: stepperPins <= 4'b0001000000000000;
//			// 7: stepperPins <= 4'b1001000000000000;
//			// 4: stepperPins <= 4'b0010;
//			// 5: stepperPins <= 4'b0011;
//			// 6: stepperPins <= 4'b0001;
//			// 7: stepperPins <= 4'b1001;
		endcase
   end
	if(sw4 == 1)
	begin 
		case(step)
			0: stepperPins2 <= 4'b0011;
			1: stepperPins2 <= 4'b0110;
			2: stepperPins2 <= 4'b1100;
			3: stepperPins2 <= 4'b1001;
			
			// 4: stepperPins <= 4'b0010;
			// 5: stepperPins <= 4'b0011;
			// 6: stepperPins <= 4'b0001;
			// 7: stepperPins <= 4'b1001;
		endcase
   end
	if(sw5 && !sw6)
	begin 
		case(step3)
//			0: stepperPins <= 4'b0000000010000000;
//			1: stepperPins <= 4'b0000000011000000;
//			2: stepperPins <= 4'b0000000001000000;
//			3: stepperPins <= 4'b0000000001100000;
//			4: stepperPins <= 4'b0000000000100000;
//			5: stepperPins <= 4'b0000000000110000;
//			6: stepperPins <= 4'b0000000000010000;
//		   7: stepperPins <= 4'b0000000010010000;
			0: stepperPins3 <= 4'b1000;
        1: stepperPins3 <= 4'b1100;
        2: stepperPins3 <= 4'b0100;
        3: stepperPins3 <= 4'b0110;
        4: stepperPins3 <= 4'b0010;
        5: stepperPins3 <= 4'b0011;
        6: stepperPins3 <= 4'b0001;
        7: stepperPins3 <= 4'b1001;
			// 4: stepperPins <= 4'b0010;
			// 5: stepperPins <= 4'b0011;
			// 6: stepperPins <= 4'b0001;
			// 7: stepperPins <= 4'b1001;
		endcase
   end
	if(sw6 && !sw5)
	begin 
		case(step3)
			0: stepperPins3 <= 4'b0001;
			1: stepperPins3 <= 4'b0011;
			2: stepperPins3 <= 4'b0010;
			3: stepperPins3 <= 4'b0110;
		   4: stepperPins3 <= 4'b0100;
		   5: stepperPins3 <= 4'b1100;
			6: stepperPins3 <= 4'b1000;
			7: stepperPins3 <= 4'b1001;
		endcase
   end
//	if(sw7 == 1)
//	begin 
//		case(step4)
//			0: stepperPins <= 4'b0000000010000000;
//			1: stepperPins <= 4'b0000000011000000;
//			2: stepperPins <= 4'b0000000001000000;
//			3: stepperPins <= 4'b0000000001100000;
//			//4: stepperPins <= 4'b0000000000100000;
//			// 5: stepperPins <= 4'b0000000000110000;
//			// 6: stepperPins <= 4'b0000000000010000;
//			// 7: stepperPins <= 4'b0000000010010000;
//			//4: stepperPins <= 4'b0110000000000011;
//			//5: stepperPins <= 4'b0110000000000010;
//			// 6: stepperPins <= 4'b0001;
//			// 7: stepperPins <= 4'b1001;
//		endcase
//   end
//	if(sw8 == 1)
//	begin 
//		case(step4)
//			0: stepperPins <= 4'b0000000000010000;
//			1: stepperPins <= 4'b0000000000110000;
//			2: stepperPins <= 4'b0000000000100000;
//			3: stepperPins <= 4'b0000000001100000;
//			// 4: stepperPins <= 4'b0010;
//			// 5: stepperPins <= 4'b0011;
//			// 6: stepperPins <= 4'b0001;
//			// 7: stepperPins <= 4'b1001;
//		endcase
//   end
end
endmodule