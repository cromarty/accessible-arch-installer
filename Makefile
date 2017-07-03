AAI_DIR = $(DESTDIR)"/usr/share/accessible-arch-installer"

all :


install :
	install -m755 accessible-arch-installer.sh $(DESTDIR)/usr/bin/accessible-arch-installer.sh
	install -m644 etc/accessible-arch-installer.conf $(DESTDIR)/etc/accessible-arch-installer.conf



#install -D -m644 lang/*.conf "$(DESTDIR)/usr/share/accessible-arch-installer/lang/"
#install -D -m644 lib/* "$(DESTDIR)/usr/share/accessible-arch-installer/lib/"



