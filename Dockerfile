#FROM ppc64le/centos:latest
FROM ppc64le/ubuntu:latest
#FROM ppc64le/debian:latest
#FROM quay.io/snehakpersistent/multi-arch-travis:ppc64le

RUN apt-get -y update \
  && apt-get install -y curl

RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get -y install tzdata \
    && apt-get install -y apache2

ADD index.html /var/www/html

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN sed -i 's/Listen 80/Listen 8081/' /etc/apache2/ports.conf

EXPOSE 80

RUN service apache2 start

CMD sleep 2000s
