# $FrauBSD: beegfs_stats/etc/init.d/GNUmakefile 2020-07-20 14:34:25 -0700 freebsdfrau $

CONFDIR=	/etc

FILES1=		beegfs_clientmstatsd \
		beegfs_clientstatsd \
		beegfs_mstats \
		beegfs_servermstatsd \
		beegfs_serverstatsd \
		beegfs_stats \
		beegfs_usermstatsd \
		beegfs_userstatsd
FILES1DIR=	$(CONFDIR)/init.d
FILES1MODE=	555

all: GNUmakefile $(FILES1)

install: $(FILES1)
	install -d -o 0 -g 0 -m 755 $(FILES1DIR)
	install -C -o 0 -g 0 -m $(FILES1MODE) $(FILES1) $(FILES1DIR)

uninstall:
	cd $(FILES1DIR) && rm -f $(FILES1)

clean:

cleandepend:
	rm -f .depend .depend.*

cleandir: clean cleandepend

