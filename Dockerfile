FROM ppc64le/centos:latest
#FROM ppc64le/ubuntu:latest
#FROM ppc64le/debian:latest
#FROM quay.io/snehakpersistent/multi-arch-travis:ppc64le

ADD temp.sh .

CMD sudo chmod +x temp.sh && ./temp.sh
