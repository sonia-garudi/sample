#FROM ppc64le/centos:latest
#FROM ppc64le/ubuntu:latest
#FROM ppc64le/debian:latest
FROM quay.io/snehakpersistent/multi-arch-travis:ppc64le

RUN apt-get -y update \
  && apt-get install -y curl

RUN export DEBIAN_FRONTEND="noninteractive" \
    && apt-get -y install tzdata \
    && apt-get install -y apache2

#ADD index.html /var/www/html

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf \
    && sed -i 's/Listen 80/Listen 9090/' /etc/apache2/ports.conf \
    && sed -i 's/VirtualHost *:80/VirtualHost *:9090/' /etc/apache2/sites-enabled/000-default.conf \
    && mkdir -p /var/run/apache2 \
    && chgrp -R 0 /var/log/apache2 /var/run/apache2 \
    && chmod -R g=u /var/log/apache2 /var/run/apache2

EXPOSE 9090

RUN service apache2 start

#CMD sleep 2000s

CMD /usr/sbin/apache2ctl -DFOREGROUND

RUN curl http://localhost:9090
