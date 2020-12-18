## Ubuntu 16.04 Dockerfile

This repository contains **Dockerfile** of [Ubuntu](http://www.ubuntu.com/) for creating container which can simplify building of gcc-newlib toolchain for Ergochip processor.

### Base Docker Image

* [ubuntu:16.04](https://registry.hub.docker.com/u/library/ubuntu/)

### Installation

1. Install [Docker](https://www.docker.com/).

### Usage

    docker run -it --rm mperov/ubuntu16.04_builder_ergochip-toolchain
