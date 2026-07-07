#include <stdio.h>
#include <stdarg.h>

#include "logger.h"

void logger_init(void)
{
    printf("[BOOT] Logger initialized\n");
}

void log_info(const char *fmt, ...)
{
    va_list args;

    va_start(args, fmt);
    printf("[INFO] ");
    vprintf(fmt, args);
    printf("\n");
    va_end(args);
}

void log_error(const char *fmt, ...)
{
    va_list args;

    va_start(args, fmt);
    fprintf(stderr, "[ERROR] ");
    vfprintf(stderr, fmt, args);
    fprintf(stderr, "\n");
    va_end(args);
}
