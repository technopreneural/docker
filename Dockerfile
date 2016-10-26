FROM		ubuntu:14.04
MAINTAINER	technopreneural@yahoo.com

#ENV		http_proxy 192.168.69.240:3142

RUN		apt-get update \
		&& DEBIAN_FRONTEND=noninteractive apt-get install -y \
			bind9 \
			bind9utils \
			bind9-doc

VOLUME		["/etc/bind"]		

EXPOSE  	53/tcp 53/udp

ENTRYPOINT	["/usr/sbin/named && tail -f /var/log/named/*"]
