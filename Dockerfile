#FROM ppc64le/centos:latest
FROM ppc64le/ubuntu:latest
#FROM ppc64le/debian:latest
#FROM quay.io/snehakpersistent/multi-arch-travis:ppc64le

CMD apt-get -y update && apt-get -y install apache2,curl

CMD systemctl status apache2

CMD curl http://localhost
