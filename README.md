# SpectrumOS
- A Linux distribution packed in initramfs.
# Credits
- Chessdash543 (contributor)
- a user on Discord
# How to run
- install QEMU via your preferred package manager
- download the RootFS and build a custom kernel with supports for systemd (we will intergrate systemd soon)
- run QEMU with this example command:
```qemu-system-x86_64 \
    -kernel arch/x86/boot/bzImage \
    -initrd initramfs.cpio.gz \
    -append "console=ttyS0 rdinit=/init loglevel=7" \
    -m 1024 \
    -nographic```
- enjoy with basic utilities