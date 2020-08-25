FROM quay.io/snehakpersistent/multi-arch-travis:x86_64

RUN apt-get install -y apache2 \
  && service apache2 start

ADD index.html /var/www/html
  
EXPOSE 80
