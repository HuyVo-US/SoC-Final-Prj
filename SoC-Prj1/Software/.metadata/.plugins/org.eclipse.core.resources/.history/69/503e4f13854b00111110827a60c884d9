/*
 * source.c
 *
 *  Created on: 22-04-2026
 *      Author: Admin
 */
#include <stdio.h>
#include "io.h"
#include "system.h"

void delay_1s() {
    for (volatile int i = 0; i < 2000000; i++);
}

unsigned char seg7[10] = {
    0b1000000, // 0
    0b1111001, // 1
    0b0100100, // 2
    0b0110000, // 3
    0b0011001, // 4
    0b0010010, // 5
    0b0000010, // 6
    0b1111000, // 7
    0b0000000, // 8
    0b0010000  // 9
};

int main() {

    int hour = 0, min = 0, sec = 0;
    int sw, mode, chuc, dv, data;

    while (1) {
        sw = IORD(SWITCH_BASE, 0);
        mode = (sw >> 8) & 0x3;
        chuc = (sw >> 4) & 0xF;
        dv   = sw & 0xF;
        data = (chuc * 10) + dv;

        if (mode != 3) {
        	if (mode == 0) sec  = (data > 59) ? 59 : data;
            else if (mode == 1) min  = (data > 59) ? 59 : data;
            else if (mode == 2) hour = (data > 23) ? 23 : data;
        }
        if (mode == 3) {	// RUN
        	delay_1s();
        	sec++;
            if (sec == 60) {
                sec = 0;
                min++;
            }
            if (min == 60) {
                min = 0;
                hour++;
            }
            if (hour == 24) {
                hour = 0;
            }
        }
        IOWR(HEX0_BASE, 0, seg7[sec % 10]);
        IOWR(HEX1_BASE, 0, seg7[sec / 10]);
        IOWR(HEX2_BASE, 0, seg7[min % 10]);
        IOWR(HEX3_BASE, 0, seg7[min / 10]);
        IOWR(HEX4_BASE, 0, seg7[hour % 10]);
        IOWR(HEX5_BASE, 0, seg7[hour / 10]);
    }
}



