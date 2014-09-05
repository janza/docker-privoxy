FROM ubuntu:14.04
MAINTAINER Josip Janzic <josip.janzic@gmail.com>

RUN apt-get update -q
RUN apt-get install -qy privoxy wget

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

ADD ./privoxy /etc/privoxy
ADD ./privoxy-blocklist.sh /
ADD ./privoxy-blocklist.conf /
ADD ./run.sh /

EXPOSE 8118


CMD ["/run.sh"]
