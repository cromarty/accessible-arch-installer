AAI_DIR = $(DESTDIR)"/usr/share/accessible-arch-installer"

all :


install :
	install -D -m644 boot/* $(DESTDIR)/usr/share/accessible-arch-installer/boot/

#install -D -m644 etc/* "$(DESTDIR)/usr/share/accessible-arch-installer/etc/"
#install -D -m644 lang/*.conf "$(DESTDIR)/usr/share/accessible-arch-installer/lang/"
#install -D -m644 lib/* "$(DESTDIR)/usr/share/accessible-arch-installer/lib/"
#install -D -m644 extra/* "$(DESTDIR)/usr/share/accessible-arch-installer/extra/"
#install -m755 accessible-arch-installer.sh $(DESTDIR)/usr/bin/accessible-arch-installer.sh

