FROM ubuntu:22.04

ENV USERNAME ubuntu
ENV PASSWORD ubuntu

RUN useradd -m $USERNAME && echo "$USERNAME:$PASSWORD" | chpasswd

RUN usermod -aG sudo $USERNAME

USER ubuntu

RUN mkdir /home/ubuntu

WORKDIR /home/ubuntu

RUN sudo apt update && sudo apt install -y \
    bash \
    curl \
    sudo \
    && rm -rf /var/lib/apt/lists/*

CMD ["tail", "-f", "/dev/null"]
