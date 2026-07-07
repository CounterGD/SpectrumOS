#include <signal.h>
#include <sys/wait.h>
#include <unistd.h>
#include <errno.h>

#include "logger.h"

static void sigchld_handler(int sig)
{
    (void)sig;

    while (waitpid(-1, NULL, WNOHANG) > 0)
        ;
}

static void sigterm_handler(int sig)
{
    (void)sig;

    log_info("Shutdown requested.");

    _exit(0);
}

void install_signal_handlers(void)
{
    signal(SIGCHLD, sigchld_handler);
    signal(SIGTERM, sigterm_handler);
    signal(SIGINT, sigterm_handler);

    log_info("Signal handlers installed");
}
