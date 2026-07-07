#include <stdio.h>

#include "logger.h"
#include "env.h"
#include "mount.h"
#include "hostname.h"
#include "signal.h"
#include "shell.h"
#include "network.h"
#include "mdev.h"
#include "shutdown.h"
#include "reboot.h"

static void banner(void)
{
    printf("\n");
    printf("=====================================\n");
    printf("         myinit booting...\n");
    printf("=====================================\n");
    printf("\n");
}

int main(void)
{
    logger_init();

    banner();

    log_info("Starting boot sequence");

    mdev_init();

    mount_filesystems();

    setup_environment();

    setup_hostname();

    setup_network();

    install_signal_handlers();

    launch_shell();

    event_loop();

    return 0;
}
