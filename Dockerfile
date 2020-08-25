FROM quay.io/snehakpersistent/multi-arch-travis:ppc64le

CMD "ls"

RUN apt-get install -y apache2

ADD index.html /var/www/html

RUN service apache2 start

EXPOSE 80
