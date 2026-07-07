#define _POSIX_C_SOURCE 200809L

#include <stdlib.h>

#include "logger.h"
#include "env.h"
#include <stdlib.h>

#include "logger.h"
#include "env.h"

void setup_environment(void)
{
    setenv("PATH",
        "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
        1);

    setenv("HOME", "/root", 1);
    setenv("USER", "root", 1);
    setenv("LOGNAME", "root", 1);
    setenv("TERM", "linux", 1);
    setenv("LANG", "C.UTF-8", 1);

    log_info("Environment configured");
}
