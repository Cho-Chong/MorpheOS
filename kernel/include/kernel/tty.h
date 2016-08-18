#ifndef _KERNEL_TTY_H
#define _KERNEL_TTY_H

#include <stddef.h>

extern void terminal_initialize(void);
extern void terminal_putchar(char c);
extern void terminal_write(const char* data, size_t size);
extern void terminal_writestring(const char* data);

#endif
