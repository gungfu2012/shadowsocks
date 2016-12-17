FROM python:latest
RUN git clone https://github.com/breakwa11/shadowsocks.git
WORKDIR ./shadowsocks/
RUN bash initcfg.sh
WORKDIR ./shadowsocks/
EXPOSE 1080
CMD python server.py -p 1080 -k 888888 -m aes-128-cfb -o http_simple
