FROM python:latest
RUN apt-get update && apt-get install git && git clone https://github.com/breakwa11/shadowsocks.git
WORKDIR ./shadowsocks/shadowsocks/
RUN bash ../initcfg.sh
EXPOSE 1080
CMD python server.py -k 888888 -o http_simple
