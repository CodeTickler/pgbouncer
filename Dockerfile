FROM ubuntu:14.04
MAINTAINER Volodymyr Kuznetsov <vova@cyberhaven.io>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y pgbouncer && \
    apt-get clean && \
    find /var/lib/apt/lists/ -type f -exec rm -f {} \;

ADD docker-entrypoint.sh /

EXPOSE 6432

ENTRYPOINT ["/docker-entrypoint.sh"]
