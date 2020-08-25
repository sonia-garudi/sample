FROM quay.io/snehakpersistent/multi-arch-travis:latest

RUN apt update -y \
  && apt-get install -y apache2 \
  && service apache2 start

ADD index.html /var/www/html

CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]

EXPOSE 80
