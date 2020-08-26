#FROM ppc64le/centos:latest
FROM ppc64le/ubuntu:latest
#FROM ppc64le/debian:latest
#FROM quay.io/snehakpersistent/multi-arch-travis:ppc64le

RUN apt-get -y update \
  && apt-get install -y curl

CMD sleep 2000s
