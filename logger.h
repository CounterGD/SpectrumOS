#ifndef LOGGER_H
#define LOGGER_H

void logger_init(void);
void log_info(const char *fmt, ...);
void log_error(const char *fmt, ...);

#endif
