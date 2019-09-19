PREFIX = /opt/tools

.PHONY: install
install:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -o root -g wheel -m 0775 zzz $(DESTDIR)$(PREFIX)/bin
	install -o root -g wheel -m 0644 lid.conf /usr/local/etc/devd
	service devd restart

.PHONY: uninstall
uninstall:
	rm -r $(DESTDIR)$(PREFIX)/bin/zzz
	rm -r /usr/local/etc/devd/lid.conf
	service devd restart
