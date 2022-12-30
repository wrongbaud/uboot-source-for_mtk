FROM dockcross/linux-mipsel-lts

ENV DEFAULT_DOCKCROSS_IMAGE gl_uboot_image

# Standard build tools and utilities, nothing special here
RUN apt-get update
RUN apt-get -y install bison flex bc libssl-dev make build-essential u-boot-tools git vim tmux libncurses-dev cmake  libncursesw5-dev

# We need 32 bit support for the included toolchain
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get -y install libc6:i386 libncurses5:i386 libstdc++6:i386
