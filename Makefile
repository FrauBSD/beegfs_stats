# $FreeBSD$

SUBDIRS=	etc

SCRIPTS=	beegfs_mstats \
		beegfs_stats

BINDIR?=	/usr/local/bin

.include <bsd.prog.mk>
