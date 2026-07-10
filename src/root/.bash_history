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
apt list
apt -h
apt list --installed
apt install fastfetch
fastfetch
cat /bin/apt
cat /usr/bin/apt
apt list --installed
exit
apt list --installed
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt list --installed
apt install fastfetch
fastfetch
apt remove fastfetch
fastfetch
apt install fastfetch
apt autoremove
apt install fastfetch
fastftech
fastfetch
apt remove fastfetch
fastfetch
apt install fastfetch
fastfetch
apt remove fastfetch
exit
fastfetch
apt remove fastfetch
apt install fastfetch
fastfetch
nano etc/os-realease 
apt install fastfetch
fastfetch
fastfetch
apt remove fastfetch
clear
exit
fastfetch
apt install fastfetch
fastfetch
nano etc/os-realease
fastfetch
cat /etc/os-release
pwd
ls
ls
ls etc
fastfetch
mv /etc/os-realease /etc/os-release
ls etc
fastfetch
nano etc/os-release
fastfetch
nano etc/os-release
fastfetch
ls
cd root
ls
ls .config
ls -a
cd ..
cd ..
cd ..
pwd
ls
fastfetch
exit
fastfetch --list-logos | grep spectrum
exit
fastfetch
nano etc/os-release 
fastfetch
fastfetch
apt install sl
sl
sl
sl
sl
sl
sl
sl
sl
sl
sl
apt search sl
apt list --installed
apt install neofetch
apt update
apt install neofetch
apt install cowsay
apt install cowsay
apt install cowsay
apt install cowsay
apt install cowsay
apt install cowsay
apt install cowsay
apt --version
fastfetch
apt install cowsay
apt install cowsay
apt install cowsay
apt install cowsay
apt install neofetch
apt install fastfetch
apt install cowsay
apt install neofetch
fastfetch
fastfetch
apt install neofetch
apt install fastfetch
fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
fastfetch
fastfetch
apt install fastfetch
fastfetch
apt install fastfetch
fastfetch
apt install fastfetch
apt install fastfetch
fastfetch
apt remove fastfetch
fastfetch
apt install fastfetch
fastfetch
apt remove fastfetch
apt install cowsay
apt install cowsay
apt install cowsay
cowasay
cowsay
apt install fastfetch
apt install cowsay
apt install fastfetch
apt remove fastfetch
apt install fastfetch
fastfetch
apt remove fastfetch
apt install cowsay
apt remove fastfetch
apt install fastfetch
fastfetch
apt install cowsay
cowsay
cowsay hello
cowsay
/usr/games/cowsay
/usr/games/cowsay hello
cowsay hello
apt remove cowsay
apt install cowsay
cowsay hello
exit
cowsay hello
cowsay hello
cowsay hello
cowsay hello
cowsay hello
cowsay hello
cowsay hello
cowsay hello
cowsay hello
exit
cowsay hello
apt remove cowsay
fastfetch
apt search jp2a
apt install jp2a
exit
apt install jp2a
apt install jp2a
jp2a
jp2a
apt install jp2a
apt install jp2a
exit
apt install jp2a
apt install jp2a
apt install jp2a
jp2a
fastfetc
fastfetch
apt autoremove
apt remove jp2a
apt autoremove
fastfetch
jp2a
apt autoremove
apt autoremove
apt autoremove
apt autoremove
apt list
apt list --installed
apt list -i
fastfetch
apt autoremove
apt -h
apt autoremove
apt list --installed
apt remove cowsay
apt autoremove
fastfetch
fastfetch
fastfetch
fastfetch
fastfetch
fastfetch
clear
apt autoremove
apt autoremove
clear
apt autoremove
apt autoremove
fastfetch
apt list --installed
apt remove fastfetch
fastfetch
apt autoremove
apt install fastfetch
apt install fastfetch
apt remove fastfetch
apt autoremove
apt remove fastfetch
apt install fastfetch
apt install fastfetch
fastfetch
fastfetch --logo Ubuntu
fastfetch
apt install onefetch
apt update
apt install onefetch
onefetch
apt install git
git -v
ls
apt remove git
apt autoremove
apt autoremove
apt autoremove
apt autoremove
apt install --reinstall libc6
apt install --reinstall libc6
apt autoremove
apt autoremove
apt autoremove
apt autoremove
apt autoremove --purge
apt --purge autoremove
apt apt install --reinstall libc6
apt install --reinstall libc6
apt autoremove --purge
apt autoremove --purge
apt autoremove --purge
apt autoremove --purge
apt autoremove
apt remove fastfetch
apt install libc6
fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
exit
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt install fastfetch
apt autoremove
fastfetch
apt autoremove
apt install fastfetch
fastfetch
apt remove fastfetch
apt install fastfetch
apt install cmatrix
cmatrix
apt remove cmatrix
apt autoremove
apt install curl
sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fastfetch
ls -l /etc/ssl/certs/ca-certificates.crt
cat /etc/os-release 
apt install -y ca-certificates
apt install ca-certificates
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
apt install git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ls -l /dev/random /dev/urandom
ls
ls -la /dev
mount -t devtmpfs devtmpfs /dev
ls -la /dev
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
exit
exit
ps -p 1 -o pid,comm,args
ps -o PID,COMM,ARGS
ps -o pid,comm,args
ls
mkdir -p /proc
mount -t proc proc /proc
ps -o pid,comm,args
exit
zsh
exit
ls
ls -l /usr/lib/systemd/systemd]
ls -l /usr/lib/systemd/systemd
find / -name systemd 2>/dev/null | head -50
ls -la /usr/lib/systemd | head -50
/usr/lib/systemd/systemd --version
pwd
apt search systemd
apt install systemd systemd-sysv
apt install usrmerge
apt install systemd systemd-sysv
apt install coreutils
apt install util-linux
zsh
exit
