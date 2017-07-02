AAI_DIR = $(DESTDIR)"/usr/share/accessible-arch-installer"

all :


install :
	install -m644 -d ./lang /usr/share/accessible-arch-installer
	install -m644 -d ./lib /usr/share/accessible-arch-installer
	install -m644 -d ./boot /usr/share/accessible-arch-installer
	install -m644 -d ./extra /usr/share/accessible-arch-installer
	install -m644 -d ./etc /usr/share/accessible-arch-installer

	install -m755 arch-installer.sh $(DESTDIR)/usr/bin
	install -m644 etc/accessible-arch-installer.conf --target-directory=$(DESTDIR)/etc

