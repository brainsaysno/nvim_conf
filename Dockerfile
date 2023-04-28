FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    git \
    python3 \
    wget \
    neovim
