#!/bin/bash
mkdir ~/rr
sudo apt update && sudo apt install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev openjdk-8-jdk tmux mosh htop
mkdir ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
cd ~/rr
repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b oreo --depth=1 --groups=all,-notdefault,-device,-darwin,-x86,-mips,-exynos5
mkdir ~/rr/.repo/local_manifests
cp ~/buildscript/manifest.xml ~/rr/.repo/local_manifests
repo sync


