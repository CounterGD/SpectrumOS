#define _GNU_SOURCE
#include <unistd.h>
#include <string.h>
#include <errno.h>

#include "logger.h"
#include "hostname.h"

#define DEFAULT_HOSTNAME "helium"

void setup_hostname(void)
{
    if (sethostname(DEFAULT_HOSTNAME,
                    strlen(DEFAULT_HOSTNAME)) == -1)
    {
        log_error("sethostname: %s", strerror(errno));
    }
    else
    {
        log_info("Hostname set to %s", DEFAULT_HOSTNAME);
    }
}
