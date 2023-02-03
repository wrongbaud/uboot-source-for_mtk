# Docker Instructions

1. Launch the docker container build with the appropriate dependencies via ```launch_docker.sh```
2. Run the ```build.sh``` script in the ```/work``` directory

# Modifications
- Password prompt
- CMD_CFG_MEMORY (located in include/cmd_confdefs.h)

# OpenWRT

Starting with instructions from here: https://openwrt.org/docs/guide-developer/toolchain/use-buildsystem

Ran make menuconfig and selected our target via make -j$(nproc)

# OpenWRT (Prebuilts)

Pulled from: https://archive.openwrt.org/snapshots/trunk/ramips/mt7628/

# Reflashing Stock Router


