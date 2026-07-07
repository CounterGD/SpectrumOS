#include "mdev.h"

#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/sysmacros.h>
#include <sys/wait.h>
#include <unistd.h>

int mdev_init(void)
{
    mknod("/dev/console", S_IFCHR | 0600, makedev(5, 1));
    mknod("/dev/null", S_IFCHR | 0666, makedev(1, 3));

    int fd = open("/proc/sys/kernel/hotplug", O_WRONLY);
    if (fd < 0)
        return -1;

    write(fd, "/sbin/mdev\n", 11);
    close(fd);

    pid_t pid = fork();

    if (pid == 0) {
        char *argv[] = { "/sbin/mdev", "-s", NULL };
        execv(argv[0], argv);
        _exit(127);
    }

    if (pid > 0)
        waitpid(pid, NULL, 0);

    return 0;
}
