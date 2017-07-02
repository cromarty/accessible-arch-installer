AAI_DIR = $(DESTDIR)"/usr/share/accessible-arch-installer"

all :


install :
	[ -d "${AAI_DIR}" ] || mkdir -p "${AAI_DIR}"
	cp -r ./lang "${AAI_DIR}"
	cp -r ./lib "${AAI_DIR}"
	cp -r ./boot "${AAI_DIR}"
	cp -r ./extra "${AAI_DIR}"
	cp -r ./etc "${AAI_DIR}"

	[ -d $(DESTDIR)/usr/bin ] || mkdir $(DESTDIR)/usr/bin
	cp arch-installer.sh $(DESTDIR)/usr/bin
	cp etc/accessible-arch-installer.conf $(DESTDIR)/etc


