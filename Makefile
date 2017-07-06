AAI_DIR = $(DESTDIR)"/usr/share/accessible-arch-installer"

all :


install :
	mkdir -p $(DESTDIR)/usr/share/accessible-arch-installer
	cp -r ./lang/ $(DESTDIR)/usr/share/accessible-arch-installer/
	chmod 0644 $(DESTDIR)/usr/share/accessible-arch-installer/lang/*.conf
	mkdir -p $(DESTDIR)/usr/share/accessible-arch-installer/lib
	cp -r ./lib/ $(DESTDIR)/usr/share/accessible-arch-installer/
	chmod 0644 $(DESTDIR)/usr/share/accessible-arch-installer/lib/*.sh
	install -m644 ./etc/dialogrc $(DESTDIR)/etc/dialogrc
	install -m644 ./etc/accessible-arch-installer.conf $(DESTDIR)/etc/accessible-arch-installer.conf
	install -m755 accessible-arch-installer.sh $(DESTDIR)/usr/bin/accessible-arch-installer.sh

uninstall :
	rm $(DESTDIR)/usr/bin/accessible-arch-installer.sh
	rm $(DESTDIR)/etc/dialogrc
	rm $(DESTDIR)/etc/accessible-arch-installer.conf
	rm -r $(DESTDIR)/usr/share/accessible-arch-installer
