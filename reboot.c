#include "reboot.h"

#include <stdio.h>
#include <unistd.h>
#include <sys/reboot.h>
#include <linux/reboot.h>

void reboot_system(void)
{
    printf("myinit: rebooting...\n");

    sync();

    reboot(LINUX_REBOOT_CMD_RESTART);

    // Only reached if reboot fails
    perror("myinit: reboot failed");
}

void poweroff_system(void)
{
    printf("myinit: powering off...\n");

    sync();

    reboot(LINUX_REBOOT_CMD_POWER_OFF);

    // Only reached if poweroff fails
    perror("myinit: poweroff failed");
}
