FROM		ubuntu:14.04
MAINTAINER	technopreneural@yahoo.com

VOLUME		"/etc/bind"		

RUN		DEBIAN_FRONTEND=noninteractive apt-get -y update && \
		apt-get install -y bind9 && \
		update-rc.d bind9 defaults

EXPOSE  	53/tcp 53/udp

CMD		"service bind9 start"
