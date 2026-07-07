# SpectrumOS
A basic Linux distribution packed in initramfs

- crediting to @intoxicatinq (User ID: 1421392087978475582) on Discord for helping me decide the username and hostname

how to run the distribution:
- compile a Linux kernel or take one from ur Linux installation
- run QEMU with -m 2G and -initrd rootfs.cpio.gz and -append "console=ttyS0 rdinit=/init" and -kernel <path/to/kernel/image>
- wait for the initramfs to load
- enjoy
