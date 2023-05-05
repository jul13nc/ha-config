sudo -i
apt install -y ncurses-dev cmake librtlsdr-dev 
apt install -y git
apt install -y libtool-bin automake make info libc6-dev libgmp-dev libgmp3-dev gawk qpdf bison 
git clone git://git.osmocom.org/rtl-sdr.git 
cd rtl-sdr
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON 
make 
make install 
ldconfig
cp ../rtl-sdr.rules /etc/udev/rules.d
ln -s /usr/local/bin/rtl-sdr /usr/bin/rtl-sdr
