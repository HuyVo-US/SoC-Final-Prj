/*
 * source.c
 *
 *  Created on: 23-04-2026
 *      Author: Admin
 */
#include <stdio.h>
#include "io.h"
#include "system.h"

void delay_1s() {
    for (volatile int i = 0; i < 5000000; i++);
}

int main() {

    int hour = 0, min = 0, sec = 0;
    int sw, mode, chuc, dv, data;

    while (1) {
        sw = IORD(SWITCHES_0_BASE, 0);
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
        IOWR(HEXS_0_BASE, 0, ((sec / 10) << 4)  | (sec % 10));
        IOWR(HEXS_0_BASE, 1, ((min / 10) << 4)  | (min % 10));
        IOWR(HEXS_0_BASE, 2, ((hour / 10) << 4) | (hour % 10));
    }
}







