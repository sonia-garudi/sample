FROM ppc64le/debian:latest
#FROM quay.io/snehakpersistent/multi-arch-travis:ppc64le

CMD chmod +x temp.sh && ./temp.sh
