FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    git \
    python3 \
    wget \
    neovim \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash myuser

USER myuser
WORKDIR /home/myuser

CMD mkdir -p ~/.config && \
    wget https://raw.githubusercontent.com/brainsaysno/nvim_conf/main/copyconf.py && \
    python3 copyconf.py && \
    nvim
