#define _GNU_SOURCE
#include <stdio.h>
#include <string.h>
#include <errno.h>

#include <unistd.h>
#include <sys/socket.h>
#include <sys/ioctl.h>
#include <net/if.h>
#include <netinet/in.h>

#include "logger.h"
#include "network.h"

static int sockfd = -1;

static void bring_up_lo(void)
{
    struct ifreq ifr;
    memset(&ifr, 0, sizeof(ifr));

    strncpy(ifr.ifr_name, "lo", IFNAMSIZ);

    if (ioctl(sockfd, SIOCGIFFLAGS, &ifr) < 0)
    {
        log_error("ioctl get lo flags: %s", strerror(errno));
        return;
    }

    ifr.ifr_flags |= IFF_UP;

    if (ioctl(sockfd, SIOCSIFFLAGS, &ifr) < 0)
    {
        log_error("ioctl set lo up: %s", strerror(errno));
        return;
    }

    log_info("Loopback interface up");
}

void setup_network(void)
{
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);

    if (sockfd < 0)
    {
        log_error("socket() failed: %s", strerror(errno));
        return;
    }

    bring_up_lo();

    close(sockfd);

    log_info("Network stack initialized (Stage 3 P1)");
}
