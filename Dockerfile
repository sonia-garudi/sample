FROM ppc64le/ubuntu:latest

CMD "ls"

RUN apt-get install -y apache2

ADD index.html /var/www/html

RUN service apache2 start

EXPOSE 80
