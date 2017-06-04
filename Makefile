PREFIX := /usr/local

all:

install:
	install -d $(DESTDIR)/etc/cron.daily
	install etc/zfs-backup.cron.daily    $(DESTDIR)/etc/cron.daily/zfs-backup
	install -d $(DESTDIR)$(PREFIX)/sbin
	install src/zfs-backup $(DESTDIR)$(PREFIX)/sbin/zfs-backup
