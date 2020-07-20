# $FreeBSD$

SUBDIRS=	newsyslog.conf.d \
		rc.d

CONFDIR?=	/usr/local/etc

FILESGROUPS=	FILES1
FILES1=		beegfs_clientmstats.conf \
		beegfs_clientstats.conf \
		beegfs_servermstats.conf \
		beegfs_serverstats.conf \
		beegfs_usermstats.conf \
		beegfs_userstats.conf
FILES1MODE=	444
FILES1DIR=	${CONFDIR}

.include <bsd.prog.mk>
