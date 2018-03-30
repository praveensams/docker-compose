FROM centos

MAINTAINER mohan

LABEL app="apache" \
      version="2.44.0"

ARG VOLS

RUN yum install httpd -y

VOLUME /var/${VOLS}

WORKDIR /mnt

HEALTHCHECK --interval=1m --timeout=10s \
  CMD curl -f http://localhost || exit 8

CMD ["httpd","-D","FOREGROUND"]
