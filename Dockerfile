FROM rust:1.75

RUN apt-get update && apt-get install -y gawk wget git-core diffstat unzip \
            texinfo gcc-multilib build-essential chrpath socat cpio \
            python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping \
            python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev xterm locales \
            vim bash-completion screen libkf5bluezqt-dev nano mc rsync lz4 zstd cmake

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

RUN echo 'root:root' | chpasswd
RUN rustup target add aarch64-unknown-linux-gnu
WORKDIR /
