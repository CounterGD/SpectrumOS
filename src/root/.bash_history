ls
nano
vi
vim
nano
exit
nano
export TERM=linux
nano
ls /usr/share/terminfo
exit
nano
exit
dpkg --version
dpkg
which dpkg
eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeexit
exit
/usr/bin/dpkg --version
exit
/usr/bin/dpkg --version
cd ~/tmp-libmd
wget http://deb.debian.org/debian/pool/main/libs/libselinux/libselinux1_3.8-3_amd64.deb
exit
/usr/bin/dpkg --version
exit
/usr/bin/dpkg --version
mkdir -p /var/lib/dpkg
touch /var/lib/dpkg/status
ls -la /var/lib/dpkg
which dpkg
ls -l /bin/dpkg
eeexit
exit
ls
cd tmp
dpkg -i tmp
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
echo $PATH
which sh
which tar
which ldconfig
which start-stop-daemon
mkdir ~/tmp-libc-bin
cd ~/tmp-libc-bin
ls
cd ..
ls
cd ..
ls
pwd
ls tmp
rm -rf tmp
exit
dpkg -i tmp
echo $PATH
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
echo $PATH
dpkg -i tmp
ls
ls etc
cd ..
ls
ls var
mkdir var/log
dpkg -i tmp
pwd
ls
mkdir tmp
ls tmp
dpkg -i tmp/pkg.deb 
exit
dpkg -i tmp/pkg.deb 
nano /etc/bash.bashrc
dpkg -i tmp/pkg.deb 
nano /etc/profile
exit
dpkg -i tmp/pkg.deb 
echo $PATH
nano /root/.bashrc
exit
echo $PATH
dpkg -i tmp/pkg.deb 
dpkg -i tmp/pkg.deb 
dpkg -i tmp/pkg.deb 
dpkg -i tmp/pkg.deb 
dpkg -i tmp/pkg.deb 
dpkg --install tmp/pkg.deb 
dpkg --install tmp/pkg.deb 
dpkg --install tmp/pkg.deb 
mkdir -p /etc/apt
mkdir -p /var/lib/apt/lists
mkdir -p /var/cache/apt/archives
nano /etc/apt/sources.list
apt
apt -h
apt -h
apt -h
apt -h
apt -h
apt -h
apt -h
apt -h
apt -h
apt -h
apt -h
apt -h
dpkg -l | grep -E 'apt|libapt'
which apt
ls -l /usr/bin/apt
ldd /usr/bin/apt
dpkg -S /usr/lib/x86_64-linux-gnu/libapt-pkg.so.7.0
dpkg-deb -f ~/Downloads/apt_3.3.1_amd64.deb Depends
dpkg-deb -f apt_3.3.1_amd64.deb Depends
which apt
apt -h
dpkg -l | grep -E 'apt|libapt'
ls -l /usr/lib/x86_64-linux-gnu/libapt*
cat /etc/os-release
apt --version
dpkg --version
dpkg -S /usr/lib/x86_64-linux-gnu/libapt-pkg.so.7.0.0
dpkg -S /usr/lib/x86_64-linux-gnu/libapt-private.so.0.0.0
cat /etc/os-release 2>/dev/null || true
cat /etc/debian_version 2>/dev/null || true
uname -a
cat /etc/issue
cat /etc/*release* 2>/dev/null
ls /usr/bin | grep -E 'pacman|apt|apk|dnf|yum'
ls /var/lib | grep -E 'dpkg|pacman|apk|rpm'
clear
ls -lh /var/lib/dpkg/status
head -20 /var/lib/dpkg/status
grep -E '^Package: (apt|libapt|libapt-pkg)' /var/lib/dpkg/status
grep -E '^Package: (base-files|debianutils)' /var/lib/dpkg/status
dpkg-query -W base-files
ls -l /usr/lib/x86_64-linux-gnu/libapt*
ls -la /
clear
ls -la /
ls -la /etc
find / -maxdepth 3 -name '*debian*' -o -name '*ubuntu*' 2>/dev/null
rm -f /usr/bin/apt*
rm -f /usr/lib/x86_64-linux-gnu/libapt*
apt
rm -f /usr/bin/apt
rm -f /usr/bin/apt-*
rm -f /usr/lib/x86_64-linux-gnu/libapt-pkg.so.7.0*
rm -f /usr/lib/x86_64-linux-gnu/libapt-private.so.0.0*
dpkg
dpkg -h
mkdir -p /var/lib/dpkg
touch /var/lib/dpkg/status
mkdir -p /var/lib/dpkg/info
dpkg-deb -x apt_*.deb rootfs/
dpkg-deb -x libapt-pkg*.deb rootfs/
dpkg-deb -x dpkg_*.deb rootfs/
chroot rootfs /usr/bin/apt --version
apt
apt install neofetch
apt update
apt update
apt install neofetch
apt update
apt install neofetch
apt update
exit
apt update
apt update
apt update
exit
apt update
ls
sudo apt install ./tmp/pkg.deb 
apt install ./tmp/pkg.deb 
apt install ./tmp/pkg.deb 
apt update
exit
ip addr
ip route
apt update
ping -c 4 192.168.0.75
ping -c 4 8.8.8.8
apt update
ping archlinux.org
apt update
cat /etc/apt/sources.list
dpkg --print-architecture
apt-config dump | grep Architecture
uname -m
which apt
ls -l $(which apt)
apt --version
file /usr/bin/apt
strings /usr/bin/apt | head -30
bash-5.3# file /usr/bin/apt
/usr/bin/apt:  POSIX shell script, ASCII text executable
bash-5.3# strings /usr/bin/apt | head -30
#!/bin/sh
WGET="/bin/busybox wget --no-check-certificate"
DPKG="/usr/bin/dpkg"
STATUS_DB="/var/lib/dpkg/status"
APT_LISTS_DIR="/var/lib/apt/lists"
APT_ARCHIVE_DIR="/var/cache/apt/archives"
SOURCES_LIST="/etc/apt/sources.list"
error() { echo "E: $*" >&2; }
info()  { echo "I: $*"; }
ensure_dirs() {     for d in "$APT_LISTS_DIR/partial" "$APT_ARCHIVE_DIR/partial"; do         [ -d "$d" ] || mkdir -p "$d" 2>/dev/null || { error "Could not create $d"; exit 1; };     done; wget_download() {     url="$1" out="$2";     $WGET -q -O "$out" "$url" && [ -s "$out" ]; parse_sources() {     while IFS= read -r line; do         line="${line%%#*}";         line="$(printf '%s' "$line" | tr -s ' \t' ' ' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')";         [ -z "$line" ] && continue;         set -- $line;         [ "$1" = "deb" ] || continue;         url="$2";         case "$url" in             \[*) url="$3"; dist="$4"; shift 4 ;;             *)   dist="$3"; shift 3 ;;         esac;         echo "deb|$url|$dist|$*";     done
bash-5.3# file /usr/bin/apt
/usr/bin/apt:  POSIX shell script, ASCII text executable
bash-5.3# strings /usr/bin/apt | head -30
#!/bin/sh
WGET="/bin/busybox wget --no-check-certificate"
DPKG="/usr/bin/dpkg"
STATUS_DB="/var/lib/dpkg/status"
APT_LISTS_DIR="/var/lib/apt/lists"
APT_ARCHIVE_DIR="/var/cache/apt/archives"
SOURCES_LIST="/etc/apt/sources.list"
error() { echo "E: $*" >&2; }
info()  { echo "I: $*"; }
ensure_dirs() {     for d in "$APT_LISTS_DIR/partial" "$APT_ARCHIVE_DIR/partial"; do         [ -d "$d" ] || mkdir -p "$d" 2>/dev/null || { error "Could not create $d"; exit 1; };     done; wget_download() {     url="$1" out="$2";     $WGET -q -O "$out" "$url" && [ -s "$out" ]; parse_sources() {     while IFS= read -r line; do         line="${line%%#*}";         line="$(printf '%s' "$line" | tr -s ' \t' ' ' | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')";         [ -z "$line" ] && continue;         set -- $line;         [ "$1" = "deb" ] || continue;         url="$2";         case "$url" in             \[*) url="$3"; dist="$4"; shift 4 ;;             *)   dist="$3"; shift 3 ;;         esac;         echo "deb|$url|$dist|$*"
wget -S -O - http://deb.debian.org/debian/dists/trixie/Release
wget -S -O - http://deb.debian.org/debian/dists/trixie/main/binary-amd64/Packages.gz
file /usr/bin/apt
strings /usr/bin/apt | grep -i apt
grep -n "wget\|Packages\|Release\|dists" /usr/bin/apt
sed -n '1,250p' /usr/bin/apt
wget -S -O /dev/null http://deb.debian.org/debian/dists/trixie/main/binary-amd64/Packages.gz
wget -S -O /dev/null http://deb.debian.org/debian/dists/trixie/main/binary-amd64/Packages.gz
sh -x /usr/bin/apt update
apt install fastfetch
nano /usr/bin/apt
sh -x /usr/bin/apt update
apt update
apt install fastfetch
fastfetch
dpkg -l libc6 libyyjson0 fastfetch
apt install libc6 libyyjson0
ls -ld /bin /lib /sbin /usr/bin
mv /bin /bin.old
mv /sbin /sbin.old
mv /lib /lib.old
mkdir /bin /sbin /lib
cp -a /bin.old/* /usr/bin/
cp -a /sbin.old/* /usr/sbin/
cp -a /lib.old/* /usr/lib/
rm -rf /bin.old /sbin.old /lib.old
ln -s usr/bin /bin
ln -s usr/sbin /sbin
ln -s usr/lib /lib
exit
apt update
apt install fastfetch
which tar
tar --version
apt install tar
dpkg -i /tmp/tar_1.35-1_amd64.deb
PWD
pwd
ls
dpkg -i /tmp/tar_1.34+dfsg-1.2+deb12u1_amd64.deb
dpkg -i /tmp/tar_1.34+dfsg-1.2+deb12u1_amd64.deb
apt install fastfetch
exit
apt update
exit
apt upate
apt upate
apt upate
apt upate
exit
apt upate
apt upate
apt upate
apt upate
apt upate
apt upate
apt upate
exit
apt
exit
apt
exit
ls -ld /bin
ls -l /bin/sh
ls -l /usr/bin/bash
head -n1 /usr/bin/apt
ln -s /usr/bin/bash /bin/sh
apt --version
apt update
cat /usr/bin/apt
apt update
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
fastfetch
apt remove fastfetch
apt install fastfetch
apt remove libyyjson0 libgcc-s1 gcc-14-base libc6
apt install fastfetch
fastfetch
apt install fastfetch
apt install usrmerge
apt install fastfetch
fastfetch
apt remove libyyjson0 libgcc-s1 gcc-14-base libc6
apt remove fastfetch
apt install fastfetch
