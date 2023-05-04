FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y python3 git \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /root/A /root/B /root/C /root/files \
    && touch /root/files/a.txt /root/files/b.txt /root/files/c.txt

WORKDIR /root

RUN git clone https://github.com/jwanp/git_advanced_1.git

