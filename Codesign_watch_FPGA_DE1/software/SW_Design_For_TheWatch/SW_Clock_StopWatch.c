/* Author             : AKRARAI MOHAMED, Undergraduate engineer at the National Institute of Posts and
 *                      Telecommunications, Rabat, Morocco.
 * Description        : This code implements in Embedded C a configurable software clock & StopWatch on NIOS II
 *                      Softcore Processor. The embedded hardware platform was developed in
 *                      parallel with the software on DE1 Altera starter board.
 *               The Embedded Hardware platform is composed of the following components:
 *                 - 50 Mhz Clock
 *                 - PLL
 *                 - NIOS II processor
 *                 - SDRAM
 *                 - SysID
 *                 - JTAG_UART
 *                 - Timer
 *                 - Parallel I/O for the DE1 Switshes, Red LEDS, Green LEDS, Hex display, and DE1 Keys.
 *               The code handles interrupts in an acceptable response times.
 * User instructions :  After loading DE1 board with .sof file then .elf file of the code.
 *                 -The SW0 switches between Clock mode (if SW0 LOW) and Stopwatch mode
 *               (if SW0 is HIGH).
 *                 - Clock Configuration: First SW0 should be on clock mode.
 *                                        Press KEY 2 and KEY 1 Simultaneously.
 *                                        Then press KEY 2 to adjust minutes and
 *                                        KEY 1 to adjust ours. When you're done
 *                                        configuration press both KEY 2 and KEY 1 again
 *                                        Simultaneously.
 *                - StopWatch Mode      : In order to activate the Stopwatch, First SW0
 *                                        Should be on Stopwatch mode.
 *                                        Press KEY 2 and KEY 1 Simultaneously, and the
 *                                        StopWatch will start immediately.
 *                                        Pressing KEY 2 will pause the StopWatch, and pressing it again
 *                                        will launch it.
 *                                        When the StopWatch is paused by clicking KEY2
 *                                        You can reset the StopWatch by Clicking KEY3
 *                - Green LEDs display   : LEDG 0 indicates if the Stopwatch mode is
 *                                        active or not
 *                                        LEDG 1 indicates if the StopWatch is paused.
 *                                        LEDG 7 indicates if the Clock configuration mode
 *                                        is activated.
 *                - Red LEDs display     : The red LEDs displays seconds in binary for the Clock.
 *
 * Problems not solved yet : Clicking Key2 and Key1 Simultaneously isn't practical and sometimes fails
 *
 *  */

#include <stdio.h>
#include <unistd.h>
#include "system.h"
#include "sys/alt_irq.h"

volatile int edge_capture;
unsigned char	seven_seg_table[] =
			{0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7C, 0x07,
		  	 0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71 };
char	hex_segments[] = { 0, 0, 0, 0, 0, 0, 0, 0 };


	volatile int * green_LED_ptr = (int *) LEDG_BASE;		// green LED address
	volatile int * pushbutton_ptr = (int *) KEY_BASE; // KEY address
	volatile int * sw_ptr = (int *) SW_BASE; // KEY address
	volatile int * timer_ptr = (int *) TIMER_MS_BASE;
	volatile int * ledr_ptr = (int *) LEDR_BASE;
	volatile int * ledg_ptr = (int *) LEDG_BASE;
	volatile int * key_ptr = (int *) KEY_BASE;

	int hh = 00;
	int mm = 00;
	int ss = 10;
	int ms = 0;
	int horloge = 0;
	int press = 0;
	int crono = 0;
	int msms = 0;
	int ssss = 0;
	int mmmm = 0;
	int cronometre = 0;
	int sw = 0;
	int reglage = 0;


	static unsigned int uint2bcd(unsigned int ival){
		return ((ival /10)<<4)|(ival%10);
	}

	void handle_timer_interrupts(void* context, alt_u32 id)
	{
	    /* Reset the Button's edge capture register. */
		*(timer_ptr) = 0; 		// Clear the interrupt
		  ms++;
		  if (ms==1000){
			  ss++;ms=0;
		  }

          if (ss==60){
	  		  mm++;
	  		  ss=0;
	  	  }

	  	  if (mm==60){
	  		  hh++;
	  		  mm=0;
	  	  }

	  	  if (hh==24){
	  		  hh=0;
	  	  }

  		  if (crono==1){
  			  msms++;
  			  if (msms==1000){
  				  ssss++;
  				  msms=0;
  			  }

  			  if (ssss==60){
  				  mmmm++;
  				  ssss=0;
  			  }

  			  if (mmmm==60){
  				  mmmm=0;
  			  }
  		  }
	}

	void handle_key_interrupts(void* context, alt_u32 id)
	{
		press = * (key_ptr +3) ;

		if (sw&0x1){

			reglage = 0;

		    if ((press&0x2) && (crono ==0)) {

		          crono=1;

		    }

		    else if ((press&0x4) && (crono == 1)){

			      crono=2;
		    }

		    else if ((press&0x4) && (crono == 2)){

			      crono=1;
		    }

		    else if ((press&0x8) && (crono==2)){

			     crono=0;
			     msms=0;
			     ssss=0;
			     mmmm=0;
		    }
		}
		else{

			if (press&0x1)

				reglage = 0;

			if ((press&0x2)&&(reglage==0))

				reglage = 1;

			else if ((press&0x2)&&(reglage==1))

				reglage = 0;

			else if ((press&0x4) && (reglage==1)){

			      mm++;
			}

			else if ((press&0x8) && (reglage==1)){
				  hh++;
			}
		}

		*(key_ptr + 3) =0;
	}

	void init_timer()
	{
	    /* Recast the edge_capture pointer to match the alt_irq_register() function
	     * prototype. */
	    void* edge_capture_ptr = (void*) &edge_capture;
	    /* set the interval timer period for scrolling the HEX displays */
		*(timer_ptr + 1) = 0x7;	// STOP = 0, START = 1, CONT = 1, ITO = 1
	    alt_irq_register( TIMER_MS_IRQ, edge_capture_ptr,handle_timer_interrupts );
	}
	void init_key()
	{
		void* edge_capture_ptr = (void*) &edge_capture;
		* (key_ptr + 2) = 0xe;
	    alt_irq_register( KEY_IRQ, edge_capture_ptr,handle_key_interrupts );
	}

	void Update_HEX_display(int buffer)
	{
		volatile int * HEX3_HEX0_ptr = (int *) HEX_BASE;
		int shift_buffer, nibble;
		char code;
		int i;

		shift_buffer = buffer;

		//shift_buffer = uint2bcd(shift_buffer);
		for ( i = 0; i < 8; ++i )
		{
			nibble = shift_buffer & 0x0000000F;		// character is in rightmost nibble
			code = seven_seg_table[nibble];
			hex_segments[i] = code;
			shift_buffer = shift_buffer >> 4;
		}

		*(HEX3_HEX0_ptr) = *(int *) hex_segments; // drive the hex displays

		return;
	}

int main()
{

    init_timer();
    init_key();
    while (1) {
  	    press = *(pushbutton_ptr);
  	    sw    = *(sw_ptr);
  	    * ledr_ptr = ss;
  	    * ledg_ptr = ((reglage<<7)&0x00000080)|crono;

  	    int hh_a = uint2bcd(hh);
  	    int mm_a = uint2bcd(mm);

  	    horloge = ((hh_a<<8)&0x0000FF00)|(mm_a&0x000000FF);

  	    hh_a = uint2bcd(ssss);
  	    mm_a = uint2bcd(msms/10);

  	    cronometre = ((hh_a<<8)&0x0000FF00)|(mm_a&0x000000FF);

  	      if ((sw&0x1)==0){

  		      Update_HEX_display(horloge);
  	      }

  	      else{

  		      Update_HEX_display(cronometre);
  	      }

  	  usleep(900);

    }

    return 0;
}
