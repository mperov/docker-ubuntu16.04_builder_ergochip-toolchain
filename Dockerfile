# base image
FROM ubuntu:16.04

# add file to image
ADD root/.gitconfig /root/.gitconfig
ADD root/install-systemc /root/install-systemc

# installing
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y autoconf automake autotools-dev curl python3 libmpc-dev libmpfr-dev libgmp-dev && \
  apt-get install -y gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev cmake && \
  apt-get install -y libpixman-1-dev libmpc3 libc6 lib32stdc++-4.8-dev libfdt-dev libglib2.0-dev libfdt-dev libusb-1.0-0-dev && \
  apt-get install -y sudo git htop man vim wget && \
  rm -rf /var/lib/apt/lists/* && \
  /root/install-systemc

# environment variables
ENV HOME /root

# working directory
WORKDIR /root

# default command
CMD ["bash"]
