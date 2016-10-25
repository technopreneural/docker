FROM		ubuntu:14.04
MAINTAINER	technopreneural@yahoo.com

RUN		DEBIAN_FRONTEND=noninteractive apt-get -y update \
		&& apt-get install -y bind9 \
		&& mkdir /etc/bind/zones

VOLUME		"/etc/bind/zones"		

EXPOSE  	53/tcp 53/udp

ENTRYPOINT	echo "include \"/etc/bind/zones/named.conf.zone\"" >> /etc/named.conf && /usr/sbin/named
