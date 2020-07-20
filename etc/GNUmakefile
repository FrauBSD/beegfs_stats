# $FrauBSD: beegfs_stats/etc/GNUmakefile 2020-07-20 14:34:25 -0700 freebsdfrau $

SUBDIRS=	init.d \
		logrotate.d

CONFDIR=	/etc

FILES1=		beegfs_mstats.conf \
		beegfs_stats.conf
FILES1MODE=	644
FILES1DIR=	$(CONFDIR)

all: GNUmakefile $(FILES1)
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE))||exit; done

install: $(FILES1)
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE) install)||exit; done
	install -d -o 0 -g 0 -m 755 $(FILES1DIR)
	install -C -o 0 -g 0 -m $(FILES1MODE) $(FILES1) $(FILES1DIR)

uninstall:
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE) uninstall)||exit; done
	cd $(FILES1DIR) && rm -f $(FILES1)

clean:
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE) clean)||exit; done

cleandepend:
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE) cleandepend)||exit; done
	rm -f .depend .depend.*

cleandir: clean cleandepend

