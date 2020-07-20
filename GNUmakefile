# $FrauBSD: beegfs_stats/GNUmakefile 2020-07-20 14:34:25 -0700 freebsdfrau $

SUBDIRS=	etc

SCRIPTS=	beegfs_mstats \
		beegfs_stats

BINDIR=		/usr/local/bin

all: GNUmakefile $(SCRIPTS)
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE))||exit; done

install: $(SCRIPTS)
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE) install)||exit; done
	install -C -o 0 -g 0 -m 555 $(SCRIPTS) $(BINDIR)/

uninstall:
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE) uninstall)||exit; done
	cd $(BINDIR) && rm -f $(SCRIPTS)

clean:
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE) clean)||exit; done

cleandepend:
	@for dir in $(SUBDIRS); do (cd $$dir && $(MAKE) cleandepend)||exit; done
	rm -f .depend .depend.*

cleandir: clean cleandepend

