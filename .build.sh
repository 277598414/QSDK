#!/usr/bin/env bash

# OpenWrt CI Builder
# Copyright (C) 2021 @Boos4721(Telegram and Github)  
# Default Settings

export ARCH=amd64
export SUBARCH=amd64
#export HOME=/drone
export FORCE_UNSAFE_CONFIGURE=1
export FORCE=1
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


SETUP() {
apt-get update 
apt-get -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync    
git config --global user.email 3.1415926535boos@gmail.com
git config --global user.name Boos4721
}

CLONE() {
git clone https://github.com/Boos4721/OpenWrt-Packages package/Boos --depth=1
wget -O .config https://gitlab.com/Boos4721//openwrt/-/raw/master/.config && wget -O package/base-files/files/etc/profile https://gitlab.com/Boos4721/openwrt/-/raw/master/profile && wget -O package/base-files/files/etc/banner https://gitlab.com/Boos4721/openwrt/-/raw/master/banner
./scripts/feeds update -a -f
./scripts/feeds install -a -f
}

MAIN() {
Version_File="package/lean/default-settings/files/zzz-default-settings"
Old_Version="$(egrep -o "R[0-9]+\.[0-9]+\.[0-9]+" ${Version_File})"
sed -i "s?By?By Boos4721 ?g" package/base-files/files/etc/banner
sed -i "s?Openwrt?Openwrt ${Openwrt_Version}?g" package/base-files/files/etc/banner
sed -i '/profile/d' package/base-files/files/lib/upgrade/keep.d/base-files-essential
sed -i "s?${Old_Version}?${Old_Version} By Boos4721 ?g" ${Version_File}
}


BUILD() {
make defconfig
BUILD_START=$(date +"%s")
echo " ${Old_Version} Starting first build..."
make download -j$(nproc)
make -j$(nproc) || make -j$(nproc) V=s
BUILD_END=$(date +"%s")
}

UPLOAD() {
mkdir -p ~/UPLOAD && cd ~/src/bin/targets/*/* && mv *.itb *.bin *.ubi sha256sums ~/UPLOAD/      
curl -fsSL git.io/file-transfer | sh
./transfer wet -s -p 16 --no-progress ~/UPLOAD 2>&1 | tee cowtransfer.log
echo "cat cowtransfer.log | grep https"
}

GITHUB_UPLOAD() {
cd ~/UPLOAD
git init
git remote add origin https://$token@github.com/Boos4721/updater.git
git checkout -b OpenWrt
git add .
git commit -sm "$(date +"%m%d-%H%S")"
git push -uf origin OpenWrt    

}

SETUP
CLONE
MAIN
BUILD
UPLOAD
GITHUB_UPLOAD

DIFF=$(($BUILD_END - $BUILD_START))
echo "Build completed in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) seconds"
