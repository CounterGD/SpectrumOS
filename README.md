# SpectrumOS
- A Linux distribution packed in initramfs.
# Credits
- Chessdash543 (contributor)
- a user on Discord
# How to run
- install QEMU via your preferred package manager
- download the RootFS and build a custom kernel with supports for systemd (now distributed in src/, clone this repository and find a solution to repack the RootFS)
- run QEMU with this example command and enjoy:
```
qemu-system-x86_64 \
    -kernel arch/x86/boot/bzImage \
    -initrd rootfs.cpio.gz \
    -append "console=ttyS0 rdinit=/init loglevel=7" \
    -m 1024 \
    -nographic