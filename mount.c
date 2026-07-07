#define _GNU_SOURCE

#include <stdio.h>
#include <sys/mount.h>
#include <sys/stat.h>
#include <errno.h>
#include <string.h>

#include "logger.h"
#include "mount.h"

static void ensure_dir(const char *path)
{
    if (mkdir(path, 0755) == -1 && errno != EEXIST)
        log_error("mkdir(%s): %s", path, strerror(errno));
}

static void mount_one(const char *src,
                      const char *target,
                      const char *type,
                      unsigned long flags)
{
    ensure_dir(target);

    if (mount(src, target, type, flags, NULL) == -1)
    {
        log_error("mount %s -> %s failed: %s",
                  src,
                  target,
                  strerror(errno));
    }
    else
    {
        log_info("Mounted %s", target);
    }
}

void mount_filesystems(void)
{
    mount_one("proc", "/proc", "proc", 0);
    mount_one("sysfs", "/sys", "sysfs", 0);
    mount_one("devtmpfs", "/dev", "devtmpfs", 0);
    mount_one("tmpfs", "/run", "tmpfs", 0);
}
