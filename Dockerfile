FROM python:latest
RUN apt-get update && apt-get install git && git clone https://github.com/breakwa11/shadowsocks.git
WORKDIR ./shadowsocks/shadowsocks/
RUN bash ../initcfg.sh
EXPOSE 1080
CMD python server.py -p 1080 -k 888888 -m aes-128-cfb -o http_simple
