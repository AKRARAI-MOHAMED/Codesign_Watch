# Codesign_Watc

Author             : AKRARAI MOHAMED, Undergraduate engineer at the National Institute of Posts and
                     Telecommunications, Rabat, Morocco. <br />
Description        : This code implements in Embedded C a configurable software clock & StopWatch on NIOS II
                   Softcore Processor. The embedded hardware platform was developed on DE1 Altera starter board.<br />
               The Embedded Hardware platform is composed of the following components:
                - 50 Mhz Clock
                - PLL
                - NIOS II processor
                - SDRAM
                - SysID
                - JTAG_UART
                - Timer
                - Parallel I/O for the DE1 Switshes, Red LEDS, Green LEDS, Hex display, and DE1 Keys.
               The code handles interrupts in an acceptable response times.
 User instructions :  After loading DE1 board with .sof file then .elf file of the code.
                 -The SW0 switches between Clock mode (if SW0 LOW) and Stopwatch mode
               (if SW0 is HIGH).
                - Clock Configuration: First SW0 should be on clock mode.
                                        Press KEY 2 and KEY 1 Simultaneously.
                                         Then press KEY 2 to adjust minutes and
                                         KEY 1 to adjust ours. When you're done
                                         configuration press both KEY 2 and KEY 1 again
                                         Simultaneously.
                 - StopWatch Mode      : In order to activate the Stopwatch, First SW0
                                         Should be on Stopwatch mode.
                                        Press KEY 2 and KEY 1 Simultaneously, and the
                                         StopWatch will start immediately.
                                         Pressing KEY 2 will pause the StopWatch, and pressing it again
                                        will launch it.
                                         When the StopWatch is paused by clicking KEY2
                                         You can reset the StopWatch by Clicking KEY3
                 - Green LEDs display   : LEDG 0 indicates if the Stopwatch mode is
                                         active or not
                                         LEDG 1 indicates if the StopWatch is paused.
                                         LEDG 7 indicates if the Clock configuration mode
                                         is activated.
                 - Red LEDs display     : The red LEDs displays seconds in binary for the Clock.
 
  Problems not solved yet : Clicking Key2 and Key1 Simultaneously isn't practical and sometimes fails

