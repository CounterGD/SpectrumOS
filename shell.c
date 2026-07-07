#include <unistd.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <errno.h>

#include "logger.h"

static pid_t shell_pid = -1;

void launch_shell(void)
{
    shell_pid = fork();

    if (shell_pid < 0)
    {
        log_error("fork() failed");
        return;
    }

    if (shell_pid == 0)
    {
        setenv("PS1", "\\u@\\h:\\w\\$ ", 1);

        char *argv[] = {
            "/bin/bash",
            NULL
        };

        execv("/bin/bash", argv);

        _exit(127);
    }

    log_info("Started bash (PID %d)", shell_pid);
}

void event_loop(void)
{
    int status;

    while (1)
    {
        pid_t pid = wait(&status);

        if (pid < 0)
        {
            if (errno == EINTR)
                continue;

            sleep(1);
            continue;
        }

        if (pid == shell_pid)
        {
            log_info("Shell exited. Restarting...");

            launch_shell();
        }
    }
}
