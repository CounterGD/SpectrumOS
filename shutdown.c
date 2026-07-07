#include "shutdown.h"

#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <sys/reboot.h>
#include <linux/reboot.h>

static void shutdown_handler(int sig)
{
    printf("myinit: shutdown requested\n");

    sync();

    switch (sig) {
        case SIGTERM:
            reboot(LINUX_REBOOT_CMD_POWER_OFF);
            break;

        case SIGINT:
            reboot(LINUX_REBOOT_CMD_RESTART);
            break;
    }

    printf("myinit: reboot syscall failed\n");
}

void setup_shutdown_handlers(void)
{
    signal(SIGTERM, shutdown_handler);
    signal(SIGINT, shutdown_handler);
}
