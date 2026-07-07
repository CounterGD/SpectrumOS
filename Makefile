ARCH ?= x86_64

ifeq ($(ARCH),x86_64)
CC = x86_64-linux-gnu-gcc
endif

CC = x86_64-linux-gnu-gcc

CFLAGS = -Wall -Wextra -O2 -std=c11 -D_GNU_SOURCE -static

LDFLAGS = -static

TARGET = myinit

SRC = \
	main.c \
	logger.c \
	env.c \
	mount.c \
	hostname.c \
        mdev.c \
	network.c \
	signal.c \
	shell.c \
        shutdown.c \
        reboot.c

OBJ = $(SRC:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o $(TARGET)

%.o: %.c
	$(CC) $(LDFLAGS) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)

run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run
